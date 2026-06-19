hl.on('hyprland.start', function()
  hl.exec_cmd 'hyprpaper'
  hl.exec_cmd 'nm-applet --indicator'
  hl.exec_cmd 'waybar'
  hl.exec_cmd 'swaync'
  hl.exec_cmd 'hypridle >> ~/hypridle.log'
  hl.exec_cmd 'blueman-applet'
  hl.exec_cmd 'easyeffects --service-mode'
  hl.exec_cmd 'systemctl --user start hyprpolkitagent'

  -- Clipboard manager
  hl.exec_cmd 'wl-paste --type text --watch cliphist -max-items 10 store' -- Stores only text data
  hl.exec_cmd 'wl-paste --type image --watch cliphist -max-items 10 store' -- Stores only image data
end)
