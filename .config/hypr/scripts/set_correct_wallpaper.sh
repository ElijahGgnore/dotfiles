#!/usr/bin/bash
if [ "$(cat /sys/class/power_supply/AC/online)" -eq 1 ]; then
	path="$HOME/.config/hypr/wallpapers/Deep Red.jpg"
else
	path="$HOME/.config/hypr/wallpapers/Deep Blue.jpg"
fi

sleep 0.5
hyprctl hyprpaper wallpaper ,"${path}"
