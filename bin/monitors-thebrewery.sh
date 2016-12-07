#!/bin/sh

#scale="1.4"
#w1=$(echo "2560*$scale" | bc | sed -r "s/^([0-9]+)(\..*)?/\1/")
#h1=$(echo "1440*$scale" | bc | sed -r "s/^([0-9]+)(\..*)?/\1/")
#w2=$(echo "1680*$scale" | bc | sed -r "s/^([0-9]+)(\..*)?/\1/")
#h2=$(echo "1050*$scale" | bc | sed -r "s/^([0-9]+)(\..*)?/\1/")

xrandr --output eDP1 --auto --pos -3584x0 \
	--output DP2-1 --auto --primary \
		--scale 1.4x1.4 --pos 0x0 \
	--output DP2-2 --auto --scale 1.4x1.4 \
		--pos 3584x0

#xrandr --dpi 144

# Skitskärmen
#xrandr --output DP2-3 --auto --rotate left --left-of eDP1 --scale 1.4x1.4

# Skärmen på bärbara
#xrandr --output eDP1 --pos 1680x1344 --primary
#xrandr --output eDP1 --auto --scale 1x1 --pos 0x0 --primary

# Dellskärmen
#xrandr --output DP2-1 --auto --right-of eDP1 --scale 1.4x1.4
#xrandr --output DP2-1 --auto --scale 1.4x1.4 --right-of eDP1

set-background.sh
