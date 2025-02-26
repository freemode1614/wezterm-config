-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.act

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "catppuccin-mocha" -- "catppuccin-latte"
config.window_close_confirmation = "NeverPrompt"

-- [[
--
-- 1. CaskaydiaCove Nerd Font Mono
-- 2. FantasqueSansM Nerd Font Mono
--
-- ]]
config.font = wezterm.font("FantasqueSansM Nerd Font Mono")
config.font_size = 22.0

config.window_background_opacity = 0.95
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.enable_scroll_bar = true
config.window_padding = {
	left = 4,
	right = 1,
	top = 4,
	bottom = 4,
}

config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "Roboto", weight = "Bold" }),
	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 16.0,
	-- The overall background color of the tab bar when
	-- the window is focused
	-- active_titlebar_bg = "#333333",
	-- The overall background color of the tab bar when
	-- the window is not focused
	-- inactive_titlebar_bg = "#333333",
}

config.keys = {
	{ key = "F9", mods = "ALT", action = wezterm.action.ShowTabNavigator },
}

config.colors = require("lua/cyberdream")

config.ssh_domains = {}

-- and finally, return the configuration to wezterm
return config
