#!/bin/sh
## This tweets directly to you, if you'd rather not, just set username to " "
#USERNAME="@YOUR_USERNAME"
MESSAGE="You've Got Eggs $twUser"
/bin/twidge -c $HOME/.twidgerc update $MESSAGE

exit 0
