-- grimblast
hl.layer_rule { match = { namespace = '^selection$' }, no_anim = true }
hl.bind('SHIFT + Print', hl.dsp.exec_cmd 'grimblast -nf copysave area')
hl.bind('CTRL + Print', hl.dsp.exec_cmd 'grimblast -n copysave active')
hl.bind('Print', hl.dsp.exec_cmd 'grimblast -n copysave output')
hl.bind('CTRL + SHIFT + Print', hl.dsp.exec_cmd 'grimblast -n copysave screen')
