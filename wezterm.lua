-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

local colors = {
	foreground = "#fbf1c7",
	background = "#1d2021",

	cursor_bg = "#928374",
	cursor_fg = "black",
	cursor_border = "#928374",

	selection_fg = "#928374",
	selection_bg = "#ebdbb2",

	scrollbar_thumb = "#222222",

	-- The color of the split lines between panes
	split = "#444444",

	ansi = {
		"#1d2021", -- black, color 0
		"#cc241d", -- red, color 1
		"#98971a", -- green, color 2
		"#d79921",
		"#458588",
		"#b16286",
		"#689d6a",
		"#a89984",
	},
	brights = {
		"#7c6f64", -- black, color 0
		"#fb4934", -- red, color 1
		"#b8bb26", -- green, color 2
		"#fabd2f",
		"#83a598",
		"#d3869b",
		"#8ec07c",
		"#fbf1c7",
	},
}

return {
	-- See => https://wezfurlong.org/wezterm/config/lua/config/term.html
	-- tempfile=$(mktemp) \
	-- && curl -o $tempfile https://raw.githubusercontent.com/wez/wezterm/main/termwiz/data/wezterm.terminfo \
	-- && tic -x -o ~/.terminfo $tempfile \
	-- && rm $tempfile

	term = "wezterm",

	enable_tab_bar = true,

	front_end = "OpenGL",
	colors = colors,
	color_scheme = "Gruvbox Dark",

	font = wezterm.font_with_fallback({
		"Berkeley Mono",
		"nonicons",
	}),

	font_size = 13,
	line_height = 1,

	freetype_load_flags = "NO_HINTING",

	use_fancy_tab_bar = true,

	audible_bell = "Disabled",

	keys = {
		{
			key = "k",
			mods = "CMD",
			action = act.Multiple({
				act.ClearScrollback("ScrollbackAndViewport"),
				act.SendKey({ key = "L", mods = "CTRL" }),
			}),
		},
		-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
		{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
		-- Make Option-Right equivalent to Alt-f; forward-word
		{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
		{ mods = "CMD", key = "LeftArrow", action = act.SendKey({ mods = "CTRL", key = "a" }) },
		{ mods = "CMD", key = "RightArrow", action = act.SendKey({ mods = "CTRL", key = "e" }) },
		{ mods = "CMD", key = "Backspace", action = act.SendKey({ mods = "CTRL", key = "u" }) },
		{ mods = "CMD|OPT", key = "LeftArrow", action = act.ActivateTabRelative(-1) },
		{ mods = "CMD|OPT", key = "RightArrow", action = act.ActivateTabRelative(1) },
		{ mods = "CMD|SHIFT", key = "LeftArrow", action = act.ActivateTabRelative(-1) },
		{ mods = "CMD|SHIFT", key = "RightArrow", action = act.ActivateTabRelative(1) },
	},
}
