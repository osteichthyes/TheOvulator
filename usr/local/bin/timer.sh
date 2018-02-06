#!/bin/bash

## This will work a bit unusually -- essentially, if there exists a table with
## "date", "sunrise", "sunset"
## This is standard csv syntax
## Then just grep to today's date, and get the sunrise, then at SUNRISE run the python

curMonth=$(date +%m)
Sunrise_UTC=$(cat /usr/local/share/sunriseset.txt | /bin/grep $curMonth | awk -F "\"*,\"*" '{print $2}')
Sunrise_Local=$(date -d $Sunrise_UTC UTC +"%I:%M %p")
at -f /usr/local/bin/controlservo.sh $Sunrise_Local

exit 0

