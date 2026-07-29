hl.plugin("hyprexpo", function()
    columns = 3,
    gap_size = 5,
    bg_col = "rgb(111111)",
    workspace_method = "center current",
    -- [center/first] [workspace] e.g. first 1 or center m+1
    gesture_distance = 300,
    -- how far is the "max" for the gesture
end)

-- TODO: manual review (unknown dispatcher: hyprexpo:expo)
-- hl.bind("SUPER + backslash", hl.dsp.hyprexpo:expo("toggle"))
