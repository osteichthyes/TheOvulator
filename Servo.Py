## This file goes in /usr/local/bin/

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)

## Setup GPIO 23, Pin 16 to output
GPIO.setup(16, GPIO.OUT)
## Pull pin 16 high: this will saturate
## NPN transistor, bridging completing
## servo circuit.
GPIO.output(16, 1)

## Wait 2 seconds for caps to recharge
## and any ripple to stabilize before 
## moving the horns.
time.sleep(2)  

## Setup GPIO 18, PWM_CLCK, pin 12
GPIO.setup(12, GPIO.OUT)

## Configure GPIO 18, pin 12 to PWM to
## turn servo horns.
p = GPIO.PWM(12, 50)
time.sleep(1) # sleep 1 second
## Set initial duty cycle, corresponds to 
## 20 ms cycle, or 50hz
p.start(12.5)
p.ChangeDutyCycle(12.5)  # turn towards 180 degree
## Sleep 5 second. Long enough for door to open
## and completely clear the hasp
time.sleep(5)
## Reset the horns to initial position
p.ChangeDutyCycle(2.5) # turn towards 0 degree
## Sleep 2 seconds, to ensure movement is complete
## before cutting the power to the servo.
time.sleep(2) 
## Turn off power to servo
GPIO.output(16, 0)

GPIO.cleanup()
