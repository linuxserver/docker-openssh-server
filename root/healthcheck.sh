#! /bin/bash

# The port set in the running config wins over the env var, so a port edited
# directly in sshd_config is still picked up.
PORT=$(awk '$1 == "Port" { print $2; exit }' /config/sshd/sshd_config 2>/dev/null)
PORT=${PORT:-${LISTEN_PORT:-2222}}
if [[ ! "$PORT" =~ ^[0-9]+$ ]]; then
    PORT=2222
fi

# The kernel socket table is read instead of opening a connection, so the check
# does not log an aborted handshake in the ssh log on every run. The local port
# is listed in hex and 0A is the listening state.
LISTENING="^[[:space:]]*[0-9]+:[[:space:]]+[0-9A-F]+:$(printf '%04X' "${PORT}")[[:space:]]+[0-9A-F]+:0+[[:space:]]+0A"

if grep -qE "${LISTENING}" /proc/net/tcp 2>/dev/null || grep -qE "${LISTENING}" /proc/net/tcp6 2>/dev/null; then
    exit 0
fi

echo "sshd is not listening on port ${PORT}"
exit 1
