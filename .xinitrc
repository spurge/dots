#!/bin/bash

# terminal
xrdb -merge ~/.Xresources
urxvtd --quiet --opendisplay --fork

# keybindings
xbindkeys &

# screensaver
#xautolock -time 5 -locker ~/bin/lock.sh &

# daylight
redshift -l 59.25:18.133333 &

# background
#feh --bg-scale /usr/share/backgrounds/gnome/Stripes.jpg
#feh --bg-fill ~/Bilder/Bakgrunder/all_the_tributaries_by_plangkye-d5kiz66.png.jpeg

# gnome
gnome-settings-daemon &
/usr/lib/gnome-disk-utility/gdu-notification-daemon &
/usr/lib/notification-daemon/notification-daemon &
#gnome-panel &

exec /usr/bin/i3
