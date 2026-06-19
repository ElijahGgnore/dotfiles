hl.bind(MainMod .. ' + F5', function()
  hl.exec_cmd 'hyprctl reload'
  hl.notification.create { text = 'Config reloaded', duration = 2000 }
end)
