#!/bin/bash

# autostart applications for DWM

# background
# feh --bg-scale '/home/ossifrage/Pictures/Wallpapers/really_minimal/unsorted/edited-amritanshu-sikdar-mNJw-sPvhGs-unsplash.jpg'
hsetroot -solid '#114488' &

# compositor
compton -b &

# blue light filter
redshift -c ~/.config/redshift.conf &

# numlock
numlockx on &

# Unclutter - hiding mouse cursor on inactivity
unclutter --root &

# notifications
# dunst -c ~/.config/dunst/dunstrc &
twmnd &

# Polkit???
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
