-- Clipboard picker
hl.bind(MainMod .. '+V', NoctaliaIpcDsp 'panel-toggle clipboard')

-- Emoji picker
hl.bind('CTRL+' .. MainMod .. '+E', NoctaliaIpcDsp 'panel-toggle launcher "/emo "')

-- Window picker
hl.bind(MainMod .. ' + W', NoctaliaIpcDsp 'panel-toggle launcher "/win "')
