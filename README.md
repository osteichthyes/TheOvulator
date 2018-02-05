# TheOvulator - A connected Chicken Coop
## Features
1. Opens the door daily at a pre-set time. This time is currently defined monthly, but could easily be set using week number or day of month date.
2. Egg-laying detection. Using a thermocouple, the Ovulator detects when eggs are laid (it gets warmer in the nest-box) *This feature has not yet been implemented*
3. Twitter updates. The Ovulator will tweet at you whenever the door opens or an egg is detected.
4. Twitter command. Direct messaging "OVULATE" at the account of the Ovulator will cause the door to open. The Ovulator checks every five minutes, so it will open within five minutes.

## Code
The code is intended to be loaded on a Raspberry Pi. It uses standard Unix-like file structure. All executable files reside in the local bin, not the bin. I'm assuming raspbian, but it should work more or less as-is on any distro. Exact file names may obviously differ.

## Requirements
* Raspberry Pi (or other SBC with a few open GPIO pins and a PWM pin)
* Python 3
* Twidge twitter client
* Python time, RPI.PIO
* WiFi or other network connection for NTP and tweeting

## Circuit
The servo mentioned in the python script is intended to be turned on with an NPN transistor on the ground of the servo, such that when the Raspberry Pi pulls the pin high, the transistor saturates and the servo is powered. Servos have some nascent draw, this is intended to save power as we are trying to run this using solar.
