#!/bin/bash

## This will work a bit unusually -- essentially, if there exists a table with
## | date | sunrise | sunset | 
## Then just grep to today's date, and get the sunrise, then at SUNRISE run the python

##SUNRISE=($date +%H:%m)
## something like that format, but from this table.

at -f /usr/local/bin/controlservo.sh $SUNRISE
exit 0

