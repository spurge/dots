#!/bin/bash

xrandr --dpi 144
xrdb -merge .Xresources
#exec /usr/bin/dbus-launch --exit-with-session /usr/bin/optirun /usr/bin/i3
exec /usr/bin/dbus-launch --exit-with-session /usr/bin/i3
