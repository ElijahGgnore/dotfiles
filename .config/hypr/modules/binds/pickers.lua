-- Clipboard picker
hl.bind(MainMod .. ' + V', hl.dsp.exec_cmd 'cliphist list| rofi -dmenu| cliphist decode| wl-copy')

-- Emoji picker
hl.bind('CTRL + ' .. MainMod .. ' + E', hl.dsp.exec_cmd 'rofimoji -a copy')

-- Unicode picker
hl.bind('CTRL + ' .. MainMod .. ' + U', hl.dsp.exec_cmd 'rofimoji -a copy -f arrows chess_symbols box_drawing currency_symbols')

-- Window picker
hl.bind(MainMod .. ' + W', hl.dsp.exec_cmd 'rofi -show-icons -show window')

-- Application picker
hl.bind(MainMod .. ' + R', hl.dsp.exec_cmd 'rofi -show-icons -show drun') -- R for Run
