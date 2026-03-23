s=$(printf "⏻  Shutdown\n𜺱  Lock Screen\n⏻  Restart\n⏼  Logout\n𜺱  Suspend" | wofi --dmenu -c ~/.config/wofi/config.pmenu -s ~/.config/wofi/style.pmenu.css)
if [ "$s" == "⏻  Shutdown" ]; then
	systemctl poweroff
elif [ "$s" == "𜺱  Lock Screen" ]; then
	loginctl lock-session
elif [ "$s" == "⏻  Restart" ]; then
	reboot
elif [ "$s" == "⏼  Logout" ]; then
	hyprctl dispatch exit
elif [ "$s" == "𜺱  Suspend" ]; then
	systemctl suspend
fi
