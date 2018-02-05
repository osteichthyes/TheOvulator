#!/bin/sh

while [ 1==1 ]
do
  CC=/bin/twidge -c $HOME/.twidgerc -s -u LSDM | grep $twUser | grep "OVULATE" -c
  if [ CC>=1 ]
  then
    twidge -c $HOME/.twidgerc update "Forcing an ovulation $twUser"
    /bin/python3 /usr/local/bin/servo.py\
    /bin/sleep 300
  else
    /bin/sleep 300
  fi
done
