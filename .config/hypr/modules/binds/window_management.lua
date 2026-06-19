hl.bind(MainMod .. ' + C', hl.dsp.window.close()) -- [C]lose
hl.bind(MainMod .. ' + F', hl.dsp.window.float()) -- [F]loat
hl.bind(MainMod .. ' + P', hl.dsp.window.pseudo()) -- [P]seudo
hl.bind(MainMod .. ' + O', hl.dsp.layout 'togglesplit') -- t[O]ggle
hl.bind(MainMod .. ' + page_up', hl.dsp.window.fullscreen())

-- Move windows with mainMod + SHIFT + HJKL (vim-like controls)
hl.bind(MainMod .. ' + SHIFT + H', hl.dsp.window.move { direction = 'l' })
hl.bind(MainMod .. ' + SHIFT + J', hl.dsp.window.move { direction = 'd' })
hl.bind(MainMod .. ' + SHIFT + K', hl.dsp.window.move { direction = 'u' })
hl.bind(MainMod .. ' + SHIFT + L', hl.dsp.window.move { direction = 'r' })

-- Move focus with mainMod + HJKL (vim-like controls)
hl.bind(MainMod .. ' + H', hl.dsp.focus { direction = 'left' })
hl.bind(MainMod .. ' + J', hl.dsp.focus { direction = 'down' })
hl.bind(MainMod .. ' + K', hl.dsp.focus { direction = 'up' })
hl.bind(MainMod .. ' + L', hl.dsp.focus { direction = 'right' })

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(MainMod .. ' + mouse:272', hl.dsp.window.drag(), { mouse = true })
hl.bind(MainMod .. ' + mouse:273', hl.dsp.window.resize(), { mouse = true })
