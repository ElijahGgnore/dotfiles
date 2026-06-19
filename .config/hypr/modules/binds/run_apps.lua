hl.bind(MainMod .. ' + CTRL + T', hl.dsp.exec_cmd(LaunchInTerminal .. 'tmux')) -- [T]erminal
hl.bind(MainMod .. ' + CTRL + L', hl.dsp.exec_cmd(LaunchInTerminal .. 'tmux attach')) -- [L]ast
hl.bind(MainMod .. ' + CTRL + W', hl.dsp.exec_cmd(Browser)) -- [W]eb
hl.bind(MainMod .. ' + CTRL + F', hl.dsp.exec_cmd(FileManager)) -- [F]ile
hl.bind(MainMod .. ' + CTRL + M', hl.dsp.exec_cmd(Messenger)) -- [M]essenger
hl.bind(MainMod .. ' + CTRL + P', hl.dsp.exec_cmd 'hyprpicker -a') -- [P]icker
hl.bind(MainMod .. ' + CTRL + A', hl.dsp.exec_cmd(Task)) -- t[A]sk
