hl.bind('XF86AudioRaiseVolume', NoctaliaIpcDsp 'volume-up 2', { repeating = true })
hl.bind('XF86AudioLowerVolume', NoctaliaIpcDsp 'volume-down 2', { repeating = true })
hl.bind('XF86AudioMute', NoctaliaIpcDsp 'volume-mute')

hl.bind('XF86AudioMicMute', NoctaliaIpcDsp 'mic-mute')
hl.bind('SHIFT+XF86AudioRaiseVolume', NoctaliaIpcDsp 'mic-volume-up 2', { repeating = true })
hl.bind('SHIFT+XF86AudioLowerVolume', NoctaliaIpcDsp 'mic-volume-down 2', { repeating = true })
