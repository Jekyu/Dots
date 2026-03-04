local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Fuente
config.font_size = 12
config.font = wezterm.font("JetBrainsMono Nerd Font")

-- Window

config.window_decorations = "RESIZE"
config.color_scheme = "Earthsong"
config.window_background_opacity = 0.95
config.enable_scroll_bar = true

return config
