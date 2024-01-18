#!/usr/bin/env bash
operation=$( echo -e "\tPoweroff\n\tReboot\n\tSuspend\n\tLock\n\tLogout" | wofi -i --dmenu | awk '{print tolower($2)}' )
case $operation in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $operation
                ;;
        lock)
		swaylock
                ;;
        logout)
                hyprctl dispatch exit
                ;;
esac