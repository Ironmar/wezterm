local wezterm = require("wezterm")
local mux = wezterm.mux
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(unix or {})
	window:gui_window():maximize()
end)

config.color_scheme = "OneHalfDark"
config.hide_tab_bar_if_only_one_tab = false
config.window_decorations = "NONE"
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 5,
	right = 5,
	top = 0,
	bottom = 0,
}

return config
