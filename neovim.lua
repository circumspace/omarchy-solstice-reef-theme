-- Solstice Classic — Neovim theme for Omarchy (aether.nvim v3).
-- The authentic CDE "Default" palette: light-slate canvas, teal chrome,
-- salmon (#EDA870) selection. Mirrors the colors omarchy-theme-set-templates
-- generates from colors.toml for repo installs, so manual (non-git) installs
-- render identically; aether v3 derives all surfaces — including a light
-- cursorline — from the bg/lighter_bg pair.
return {
	{
		"bjarneo/aether.nvim",
		branch = "v3",
		name = "aether",
		priority = 1000,
		opts = {
			colors = {
				bg = "#CAD1D9", -- canvas: light-slate terminal background
				dark_bg = "#686F82", -- dark slate (workspace 2/4)
				darker_bg = "#4A5866", -- deep recessed
				lighter_bg = "#ADCED7", -- raised surfaces, cursorline (light teal)

				fg = "#000000", -- ink
				dark_fg = "#414850", -- muted slate
				light_fg = "#373E46",
				bright_fg = "#000000",
				muted = "#373E46",

				red = "#7A1418",
				yellow = "#4E3A11",
				orange = "#6F4219",
				green = "#25442F",
				cyan = "#1C424D",
				blue = "#2B3F51",
				magenta = "#5B3137",
				brown = "#63472F",

				bright_red = "#5B0D10",
				bright_yellow = "#392A0B",
				bright_green = "#1A3122",
				bright_cyan = "#143038",
				bright_blue = "#1F2E3C",
				bright_magenta = "#432327",
				accent = "#EDA870", -- salmon

				cursor = "#000000",
				foreground = "#000000",
				background = "#CAD1D9",
				selection = "#EDA870",
				selection_foreground = "#000000",
				selection_background = "#EDA870",
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
