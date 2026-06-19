-- Disable a selection of animations to improve performance.
-- Not all animations are listed because some actions don't work properly without an animation (e.g. zoom)
local disabled_animations = {
  'border',
  'windows',
  'windowsIn',
  'windowsOut',
  'fadeIn',
  'fadeOut',
  'fade',
  'layers',
  'layersIn',
  'layersOut',
  'fadeLayersIn',
  'fadeLayersOut',
  'workspaces',
  'workspacesIn',
  'workspacesOut',
  'specialWorkspaceIn',
  'specialWorkspaceOut',
}

local minimal_applied = false

hl.bind('SUPER + F1', function()
  if minimal_applied then
    hl.notification.create { text = 'Minimal mode OFF', duration = 2000 }
    hl.exec_cmd 'hyprctl reload'
    return
  end
  hl.notification.create { text = 'Minimal mode ON', duration = 2000 }
  minimal_applied = true

  hl.config {
    decoration = {
      shadow = { enabled = false },
      blur = { enabled = false },
    },
  }
  for _, animation in ipairs(disabled_animations) do
    hl.animation { leaf = animation, enabled = false }
  end
end)
