#!/bin/bash

# terminal
xrdb -merge ~/.Xresources
urxvtd --quiet --opendisplay --fork

# keybindings
xbindkeys &

# screensaver
xautolock -time 5 -locker ~/bin/lock.sh &

# daylight
redshift -l 59.25:18.133333 &

# background
feh --bg-scale /usr/share/backgrounds/gnome/Stripes.jpg

exec /usr/bin/i3
