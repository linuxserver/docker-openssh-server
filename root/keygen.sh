#! /bin/bash

# selection menu
echo "Please select your key type to generate"
printf "1.) ed25519\n2.) rsa\n3.) ecdsa\n4.) dsa\n[default ed25519]:"
read opt
case $opt in
    "ed25519"|1) TYPE="ed25519";;
    "rsa"|2) TYPE="rsa";;
    "ecdsa"|3) TYPE="ecdsa" BITS="-b 521";;
    "dsa"|4) TYPE="dsa";;
    *) echo "blank or unknown option choosing ed25519" && TYPE="ed25519";;
esac
# rsa bit selection
if [[ "$TYPE" == "rsa" ]]; then
    echo "Please select RSA bits"
    printf "1.) 4096\n2.) 2048\n3.) 1024\n[default 4096]:"
    read opt
    case $opt in
        4096|1) BITS="-b 4096";;
        2048|2) BITS="-b 2048";;
        1024|3) BITS="-b 1024";;
        *) echo "blank or unknown option choosing 4096" && BITS="-b 4096";;
    esac
fi

# key generation
echo ""
echo "YOUR KEYS ARE BELOW. PLEASE TAKE A COPY OF THEM AS THEY WILL NOT PERSIST ONCE THIS TERMINAL IS CLOSED."
echo ""
echo /tmp/stderr{,.pub} | xargs -n 1 ln -sf /dev/stderr && yes | ssh-keygen -t ${TYPE} ${BITS} -N '' -qf /tmp/stderr > /dev/null
