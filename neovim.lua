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
				dark_fg = "#5B6570", -- muted slate
				light_fg = "#4A545E",
				bright_fg = "#000000",
				muted = "#4A545E",

				red = "#941E23",
				yellow = "#614919",
				orange = "#8A4811",
				green = "#31543D",
				cyan = "#26525F",
				blue = "#384F63",
				magenta = "#6F3F45",
				brown = "#7D593B",

				bright_red = "#7B1216",
				bright_yellow = "#4F3A0F",
				bright_green = "#24442F",
				bright_cyan = "#1B424D",
				bright_blue = "#2A3F51",
				bright_magenta = "#5D3036",

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
