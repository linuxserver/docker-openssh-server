# Point a user that OTP applies to, but who has not enrolled yet, at otp-setup.
# Until they do, pam_google_authenticator lets them in without asking for a
# code, so nothing else would tell them the secret is still missing.

[ -z "$SSH_CONNECTION" ] && return 0
grep -q "pam_google_authenticator.so" /etc/pam.d/sshd 2>/dev/null || return 0
[ -f /config/.google_authenticator ] && return 0

cat << 'BANNER'

────────────────────────────────────────────────────────────
  Two factor authentication is enabled on this server, but
  you have not set up your authenticator application yet.

  Run:
      otp-setup

  to get your QR code and your scratch codes. Your next
  login then asks for a 6 digit code on top of your key.
────────────────────────────────────────────────────────────

BANNER
