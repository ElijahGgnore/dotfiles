#!/bin/bash

# Listen for ACPI events using acpi_listen
acpi_listen | while read -r EVENT; do
        if echo "$EVENT" | grep -q "^ac_adapter"; then
                STATUS=$(echo "$EVENT" | awk '{print $4}')

                if [ "$STATUS" = "00000001" ]; then
                        notify-send -t 1000 -ei battery "Power state" "Switched to AC"
                        hyprctl hyprpaper wallpaper ,"~/.config/hypr/wallpapers/Deep Red.jpg"
                else
                        notify-send -t 1000 -ei battery "Power state" "Switched to battery"
                        hyprctl hyprpaper wallpaper ,"~/.config/hypr/wallpapers/Deep Blue.jpg"
                fi
        fi
done
