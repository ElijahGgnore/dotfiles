local step = 1.25 -- How much to zoom with each button press
local number_of_steps = 8
local max_zoom = step ^ number_of_steps -- Zoom in up to number_of_steps times

local function zoom_multiply(factor)
  local current = hl.get_config 'cursor.zoom_factor'
  if factor >= 0 then
    current = Round(current * factor, 3)
  else
    current = current / -factor
  end
  current = math.max(1, math.min(max_zoom, current))
  hl.config { cursor = { zoom_factor = current } }
end

local function zoom_in()
  zoom_multiply(step)
end

local function zoom_out()
  zoom_multiply(-step)
end

local function zoom_max()
  hl.config { cursor = { zoom_factor = max_zoom } }
end

local function zoom_min()
  hl.config { cursor = { zoom_factor = 1 } }
end

-- Zoom with keyboard
hl.bind(MainMod .. ' + equal', zoom_in, { repeating = true })
hl.bind(MainMod .. ' + minus', zoom_out, { repeating = true })
hl.bind(MainMod .. ' + SHIFT + equal', zoom_max)
hl.bind(MainMod .. ' + SHIFT + minus', zoom_min)

-- Zoom with mouse wheel
hl.bind(MainMod .. ' + CTRL + mouse_up', zoom_out)
hl.bind(MainMod .. ' + CTRL + mouse_down', zoom_in)
hl.bind(MainMod .. ' + CTRL + mouse:274', zoom_min)

-- Zoom with touchpad gesture
hl.gesture {
  fingers = 2,
  mods = MainMod,
  direction = 'pinch',
  action = 'cursorZoom',
  zoom_level = max_zoom,
  mode = 'live',
}
