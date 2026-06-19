hl.bind(MainMod .. ' + CTRL + SHIFT + E', hl.dsp.exit()) -- [E]xit
hl.bind(MainMod .. ' + CTRL + SHIFT + S', hl.dsp.exec_cmd 'systemctl suspend') -- [S]uspend
hl.bind(MainMod .. ' + CTRL + SHIFT + R', hl.dsp.exec_cmd 'systemctl reboot') -- [R]eboot
hl.bind(MainMod .. ' + CTRL + SHIFT + P', hl.dsp.exec_cmd 'systemctl poweroff') -- [P]oweroff
hl.bind(MainMod .. ' + CTRL + SHIFT + H', hl.dsp.exec_cmd 'systemctl hibernate') -- [H]ibernate
hl.bind(MainMod .. ' + CTRL + SHIFT + L', hl.dsp.exec_cmd 'loginctl lock-session') -- [L]ock
