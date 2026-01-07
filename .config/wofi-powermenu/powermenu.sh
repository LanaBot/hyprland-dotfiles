#!/bin/bash

if pgrep -x wofi > /dev/null; then
    killall wofi
    exit 1
fi

options="󰤄\n⸸\n󰭿"

choice=$(echo -e "$options" | wofi --dmenu --insensitive --conf /home/mortja/.config/wofi-powermenu/config --style /home/mortja/.config/wofi-powermenu/style.css)

case "$choice" in
    󰤄)
        sleep 0.2
        exec systemctl suspend;;
    ⸸)
        exec systemctl reboot;;
    󰭿)
        exec systemctl poweroff;;
esac
