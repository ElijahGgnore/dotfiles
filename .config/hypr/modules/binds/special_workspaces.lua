local function new_special_workspace(name, key, on_created_empty)
  if on_created_empty then
    hl.workspace_rule {
      workspace = 'special:' .. name,
      on_created_empty = on_created_empty,
    }
  end
  hl.bind(MainMod .. ' + ' .. key, hl.dsp.workspace.toggle_special(name))
  hl.bind(MainMod .. ' + SHIFT + ' .. key, hl.dsp.window.move { workspace = 'special:' .. name })
end

new_special_workspace('scratchpad', 'S') -- [S]cratchpad
new_special_workspace('terminal', 'T', LaunchInTerminal .. 'zellij attach -c dropdown_terminal') -- [T]erminal
new_special_workspace('messenger', 'M', Messenger) -- [M]ssenger
new_special_workspace('email', 'E', EmailClient) -- [E]mail
new_special_workspace('task', 'A', Task) -- t[A]sk
