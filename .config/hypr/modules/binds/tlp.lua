-- Switch tlp profiles
hl.bind(MainMod .. ' + CTRL + 1', hl.dsp.exec_cmd 'tlpctl power-saver')
hl.bind(MainMod .. ' + CTRL + 2', hl.dsp.exec_cmd 'tlpctl balanced')
hl.bind(MainMod .. ' + CTRL + 3', hl.dsp.exec_cmd 'tlpctl performance')
