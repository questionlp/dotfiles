local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local scheme = 'lovelace'

config.color_scheme = scheme
config.colors = {
    tab_bar = {
        active_tab = {
            bg_color = '#f7f3f2',
            fg_color = '#000000',
        },
        inactive_tab = {
            bg_color = '#171414',
            fg_color = '#ffffff',
        }
    }
}
config.default_prog = { '/usr/bin/zsh', '-l' }
config.font = wezterm.font( 'Berkeley Mono Variable', { weight = 'Light' } )
config.font_size = 12.0
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 110
config.initial_rows = 50
config.use_fancy_tab_bar = true
config.window_frame = {
    font = wezterm.font { family = 'IBM Plex Sans' },
    font_size = 12.0,
}
config.window_background_opacity = 0.93

return config

