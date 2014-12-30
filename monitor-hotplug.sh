#!/bin/bash

declare -A PROFILES
declare -A SCREENS

PROFILES["LVDSDP1"]="--output LVDS1 --auto --primary --output DP1 --auto --right-of LVDS1 --output VGA1 --off --output HDMI1 --off"
PROFILES["LVDSHDMI1VGA"]="--output LVDS1 --off --output HDMI1 --auto --output VGA1 --auto --primary --right-of HDMI1 --output DP1 --off"
PROFILES["LVDSHDMI1"]="--output LVDS1 --auto --primary --output HDMI1 --auto --right-of LVDS1 --output VGA1 --off --output DP1 --off"
PROFILES["LVDSVGA"]="--output LVDS1 --auto --primary --output HDMI1 --off --output VGA1 --auto --left-of LVDS1 --output DP1 --off"
PROFILES["LVDS"]="--output LVDS1 --auto --primary --output HDMI1 --off --output VGA1 --off --output DP1 --off"
PROFILES["HDMI1"]="--output LVDS1 --off --output HDMI1 --auto --auto --primary --output VGA1 --off --output DP1 --off"

SCREENS["HDMI1"]=`cat /sys/class/drm/card0-HDMI-A-1/status`
SCREENS["VGA"]=`cat /sys/class/drm/card0-VGA-1/status`

ACTIVE=""

if [[ "`cat /proc/acpi/button/lid/LID/state`" =~ state:[[:space:]]+open ]]; then
	ACTIVE="LVDS"
fi

for SCREEN in "${!SCREENS[@]}"; do
	if [ "${SCREENS[$SCREEN]}" == "connected" ]; then
		ACTIVE="$ACTIVE$SCREEN"
	fi
done

if [ "$USER" == "spurge" ]; then
	eval xrandr ${PROFILES[$ACTIVE]}
	~/bin/set-background.sh
	killall conky
	conky -c ~/.conkyrc > /dev/null 2>&1
else
	su - spurge -c "xrandr -d :0.0 ${PROFILES[$ACTIVE]}; /home/spurge/bin/set-background.sh; killall conky; conky -c ~/.conkyrc > /dev/null 2>&1"
fi
