#!/bin/bash

options="Shutdown\nReboot\nLogout"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power") # TODO: custom them for rofi powermenu

case "$chosen" in
    Shutdown)
        sudo systemctl poweroff
        ;;
    Reboot)
        sudo systemctl reboot
        ;;
    Logout)
        i3-msg exit
        ;;
    *)
        ;;
esac

