-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.automatically_reload_config = true
config.exit_behavior = 'CloseOnCleanExit'

-- 背景
config.window_background_opacity = 0.9
config.macos_window_background_blur = 30

-- font, fontsize
config.font = wezterm.font("Hack Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 15

-- タブバーをタブがひとつの時は表示しない
config.hide_tab_bar_if_only_one_tab = true


-- For example, changing the color scheme:
config.color_scheme = 'Hardcore'

-- and finally, return the configuration to wezterm
return config
