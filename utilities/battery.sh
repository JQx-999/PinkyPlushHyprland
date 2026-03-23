s=$(upower -e | wofi --dmenu -c ~/.config/wofi/config.battery -s ~/.config/wofi/style.battery.css)
$s
if [ $s ]; then
	upower -i $s | wofi --dmenu -c ~/.config/wofi/config.battery -s ~/.config/wofi/style.timedate.css
fi
