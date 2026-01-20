#!/bin/sh

choice=$(echo -e "󰍃 Logout\n󰐥 PowerOff\n󰑓 Reboot" | fuzzel -p " " -l 3 --dmenu )

case $choice in
	"󰍃 Logout")
		labwc --exit
		;;
	"󰐥 PowerOff")
		systemctl poweroff
		;;
	"󰑓 Reboot")
		systemctl reboot
		;;
	*)
		echo "Unvalid option"
		;;
esac
