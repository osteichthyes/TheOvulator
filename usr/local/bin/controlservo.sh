#!/bin/sh

## at assumes a shell script or executable.
## this will just start python and call the
## servo script.

/bin/python3 /usr/local/bin/servo.py
MESSAGE="OVULATION! $twUser"
/bin/twidge -c $HOME/.twidgerc update $MESSAGE

exit 0
