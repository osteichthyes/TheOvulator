#!/bin/bash

## This will work a bit unusually -- essentially, if there exists a table with
## | date | sunrise | sunset | 
## Then just grep to today's date, and get the sunrise, then at SUNRISE run the python

DATE=$(date +%m)
SUNRISE=$(cat /path/to/table/file | /bin/grep $DATE | awk -F\| '{print $2}')
at -f /usr/local/bin/controlservo.sh $SUNRISE

exit 0

