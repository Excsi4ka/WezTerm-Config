-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

local act = wezterm.action

config.keys = {
  -- paste from the clipboard
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },

  -- paste from the primary selection
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },
}


-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'Nightfly (Gogh)'
config.window_background_opacity = 0.9

-- Finally, return the configuration to wezterm:
return config
