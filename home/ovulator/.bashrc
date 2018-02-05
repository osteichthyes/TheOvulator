## ADD THIS TO .bashrc

twUser="@YOUR_TWITTER_HANDLE"
## This environment var may not work with the systemd unit,
## this yields three options, move the command here, and then set
## up a getty that auto logs that user in, start the unit in here,
## or set the variable in the unit, using something like this:

#[Service]
#Environment="SECRET=pGNqduRFkB4K9C2vijOmUDa2kPtUhArN"
#Environment="ANOTHER_SECRET=JP8YLOc2bsNlrGuD6LVTq7L36obpjzxd"
#https://serverfault.com/questions/413397/how-to-set-environment-variable-in-systemd-service
