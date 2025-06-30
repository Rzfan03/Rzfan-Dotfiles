#!/bin/bash

# rofi -show power-menu -modi "power-menu:rofi-power-menu --choices=lock,logout,suspend,reboot,shutdown"
# rofi -show power-menu -modi "power-menu:rofi-power-menu --choices=lock/logout/suspend/reboot/shutdown"

options="Lock\nLogout\nSuspend\nReboot\nShutdown"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu")

case "$chosen" in
    "Lock")
        systemctl lock-session
        ;;
    "Logout")
        i3-msg exit
        ;;
    "Suspend")
        systemctl suspend
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Shutdown")
        systemctl poweroff
        ;;
esac
