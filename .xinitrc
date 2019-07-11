#!/bin/sh

# this file is executed when calling startx

# to start a different WM, set session="WM" below, or in console run:
#    startx ~/.xinitrc WM

# session to run if none passed as first arg ($1)
session="${1:-bspwm}"

# set environment wm for use in scripts
export WM="$session"

# default arch xinit scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*.sh; do
        [ -x "$f" ] && . "$f"
    done
fi

# user init scripts and settings
[ -f /etc/X11/xinit/.Xmodmap ] && xmodmap /etc/X11/xinit/.Xmodmap
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
[ -f ~/.xprofile ] && source ~/.xprofile

# display timeout and sleep
xset s 3600 3600
xset dpms 3600 3700 4000

# keyboard repeat rate
xset r rate 400 50
kbdrate -d 400 -r 50

# dbus
dbus-update-activation-environment --all
dbus-launch

# do NOT put commands below the exec lines
case $session in

    bspwm) exec bspwm ;;

    spectrwm) flashfocus & exec spectrwm ;;

    dwm) flashfocus & ~/.config/dwm/autostart.sh & ~/.config/dwm/startdwm.sh ;;

    hlwm) flashfocus & exec herbstluftwm --locked ;;

    frwm) flashfocus & ~/.config/frankenwm/autostart & exec frankenwm ;;

    awwm) flashfocus & compton -b & exec awesome ;;

    stumpwm) flashfocus & compton -b & exec stumpwm ;;

    berry) flashfocus & exec berry ;;

    *)          exec "$session" # Unknown, try running it
esac
