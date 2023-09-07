-- pull in the wezterm API
local wezterm = require 'wezterm'

-- this table will hold the configuration
local config = {}

--   
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- custemize color scheme
config.colors = {
  -- Make the selection text color fully transparent.
  -- When fully transparent, the current text color will be used.
  selection_fg = 'none',
  -- Set the selection background color with alpha.
  -- When selection_bg is transparent, it will be alpha blended over
  -- the current cell background color, rather than replace it
  selection_bg = 'rgba(50% 50% 50% 50%)',
}
-- transparent background
config.window_background_opacity = 0.5

-- return configuration to wezterm
return config
