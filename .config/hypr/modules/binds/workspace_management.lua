-- Switch workspaces with workspace numbers
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind(MainMod .. ' + ' .. key, hl.dsp.focus { workspace = i })
  hl.bind(MainMod .. ' + SHIFT + ' .. key, hl.dsp.window.move { workspace = i })
end

-- Scroll workspaces with keyboard
hl.bind(MainMod .. ' + BRACKETRIGHT', hl.dsp.focus { workspace = '+1' })
hl.bind(MainMod .. ' + BRACKETLEFT', hl.dsp.focus { workspace = '-1' })

-- Move current window accross workspaces with keyboard
hl.bind(MainMod .. ' + SHIFT + BRACKETRIGHT', hl.dsp.window.move { workspace = '+1' })
hl.bind(MainMod .. ' + SHIFT + BRACKETLEFT', hl.dsp.window.move { workspace = '-1' })

-- Scroll workspaces with mouse wheel
hl.bind(MainMod .. ' + mouse_down', hl.dsp.focus { workspace = '-1' })
hl.bind(MainMod .. ' + mouse_up', hl.dsp.focus { workspace = '+1' })

-- Move current window accross workspaces with mouse wheel
hl.bind(MainMod .. ' + SHIFT + mouse_down', hl.dsp.window.move { workspace = '+1' })
hl.bind(MainMod .. ' + SHIFT + mouse_up', hl.dsp.window.move { workspace = '-1' })
