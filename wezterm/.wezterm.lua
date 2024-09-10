-- pull in the wezterm API
local wezterm = require("wezterm")

-- this table will hold the configuration
local config = {}

-- window
config.initial_cols = 170
config.initial_rows = 52
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
--
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- custemize color scheme
config.colors = {
	-- Make the selection text color fully transparent.
	-- When fully transparent, the current text color will be used.
	selection_fg = "none",
	-- Set the selection background color with alpha.
	-- When selection_bg is transparent, it will be alpha blended over
	-- the current cell background color, rather than replace it
	selection_bg = "rgba(50% 50% 50% 50%)",
}
-- transparent background
config.window_background_opacity = 0.79

-- font
config.font = wezterm.font("FreeMono", { weight = "Bold", italic = false })
config.font_size = 14.0

-- keybinding

config.keys = {}

-- move to n-1 th Tab: ALT + n
local function move_nth_tab()
	for i = 1, 8, 1 do
		table.insert(config.keys, {
			key = tostring(i),
			mods = "ALT",
			action = wezterm.action.ActivateTab(i - 1),
		})
	end
end
move_nth_tab()

-- toggle fullscreen
table.insert(config.keys, {
	key = "n",
	mods = "SHIFT|CTRL",
	action = wezterm.action.ToggleFullScreen,
})

-- return configuration to wezterm
return config
