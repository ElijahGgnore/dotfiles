local ipc = 'noctalia msg '

function NoctaliaIpcDsp(message)
  return hl.dsp.exec_cmd(ipc .. message)
end

function NoctaliaIpcExec(message)
  hl.exec_cmd(ipc .. message)
end

function NoctaliaSwitchProfile(profile)
  hl.exec_cmd('$HOME/.local/bin/noctalia_profile.sh ' .. profile)
end
