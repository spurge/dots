#!/bin/bash

declare -A PROFILES
declare -A SCREENS

PROFILES["LVDSHDMI1VGA"]="--output LVDS1 --off --output HDMI1 --auto --output VGA1 --auto --primary --left-of HDMI1"
PROFILES["LVDSHDMI1"]="--output LVDS1 --auto --primary --output HDMI1 --auto --left-of LVDS1 --output VGA1 --off"
PROFILES["LVDSVGA"]="--output LVDS1 --auto --primary --output HDMI1 --off --output VGA1 --auto --left-of LVDS1"
PROFILES["LVDS"]="--output LVDS1 --auto --primary --output HDMI1 --off --output VGA1 --off"

SCREENS["HDMI1"]=`cat /sys/class/drm/card0-HDMI-A-1/status`
SCREENS["VGA"]=`cat /sys/class/drm/card0-VGA-1/status`

ACTIVE="LVDS"

for SCREEN in "${!SCREENS[@]}"; do
	if [ "${SCREENS[$SCREEN]}" == "connected" ]; then
		ACTIVE="$ACTIVE$SCREEN"
	fi
done

if [ "$USER" == "spurge" ]; then
	eval xrandr ${PROFILES[$ACTIVE]}
	set-background.sh
else
	su - spurge -c "xrandr -d :0.0 ${PROFILES[$ACTIVE]}"
	su - spurge -c "/home/spurge/bin/set-background.sh"
fi
