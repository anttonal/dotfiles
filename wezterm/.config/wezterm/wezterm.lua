local wezterm = require("wezterm")
local config = {}

config.enable_wayland = true
config.front_end = "WebGpu"

-- Fonts
config.font = wezterm.font_with_fallback({
  "Hack Nerd Font",
  "Noto Color Emoji",
  "Monospace",
})
config.font_size = 12.0

-- Colors
config.color_scheme = "Gruvbox Dark (Gogh)"

-- Window
config.window_padding = { left = "10pt", right = "10pt", top = "15pt", bottom = "10pt" }
config.inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 }
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false

return config
