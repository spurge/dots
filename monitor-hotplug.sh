#!/bin/bash

declare -A PROFILES
declare -A SCREENS

PROFILES["HDMI1VGA"]="--output LVDS1 --off --output HDMI1 --auto --output VGA1 --auto --primary --left-of HDMI1"
PROFILES["HDMI1"]="--output LVDS1 --auto --primary --output HDMI1 --auto --left-of LVDS1 --output VGA1 --off"
PROFILES["VGA"]="--output LVDS1 --auto --primary --output HDMI1 --off --output VGA1 --auto --left-of LVDS1"

SCREENS["HDMI1"]=`cat /sys/class/drm/card0-HDMI-A-1/status`
SCREENS["VGA"]=`cat /sys/class/drm/card0-VGA-1/status`

ACTIVE=""

for SCREEN in "${!SCREENS[@]}"; do
	if [ "${SCREENS[$SCREEN]}" == "connected" ]; then
		ACTIVE="$ACTIVE$SCREEN"
	fi
done

if [ -n "${PROFILES[$ACTIVE]}" ]; then
	su - spurge -c "xrandr -d :0.0 ${PROFILES[$ACTIVE]}"
	su - spurge -c "/home/spurge/bin/set-background.sh"
fi
