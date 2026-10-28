-- Solstice Classic — Neovim theme for Omarchy (aether.nvim base16 engine).
-- The authentic CDE "Default" palette: light-slate canvas, teal chrome,
-- salmon (#EDA870) selection. Follows Omarchy's stock `beta`-theme contract
-- so `theme-hotreload` can live-swap it: a real plugin spec + a STRING
-- opts.colorscheme resolvable by :colorscheme.
--
-- aether only sets Visual at load (from an internal `blue0`, not base02) and does
-- NOT re-clobber it, so we force the salmon selection groups synchronously after
-- applying the scheme and on every future ColorScheme event (Omarchy live reload).
return {
	{
		"bjarneo/aether.nvim",
		name = "aether",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				base00 = "#CAD1D9", -- bg: light-slate canvas
				base01 = "#4992A7", -- chrome (teal)
				base02 = "#ADCED7", -- cursorline (raised light teal)
				base03 = "#5B6570", -- comments (muted slate)
				base04 = "#5B6570", -- dark fg
				base05 = "#000000", -- fg (ink)
				base06 = "#2E3A44",
				base07 = "#4A545E",
				base08 = "#A72A2F", -- red
				base09 = "#B26A28", -- orange (salmon family)
				base0A = "#6F5621", -- yellow (dark amber)
				base0B = "#3B6248", -- green (strings, sage)
				base0C = "#30606E", -- cyan (dark teal)
				base0D = "#435C72", -- blue (functions, dark steel)
				base0E = "#7E4B52", -- magenta (storage/cursor-word, dark rose)
				base0F = "#7D593B", -- brown
			},
		},
		config = function(_, opts)
			local salmon, onsalmon = "#EDA870", "#000000"
			local function force_selection()
				local hi = vim.api.nvim_set_hl
				hi(0, "Visual", { bg = salmon, fg = onsalmon })
				hi(0, "VisualNOS", { bg = salmon, fg = onsalmon })
				hi(0, "IncSearch", { bg = salmon, fg = onsalmon, bold = true })
				hi(0, "MatchWord", { bg = salmon, fg = onsalmon })
				hi(0, "MatchWordRef", { bg = salmon, fg = onsalmon })
			end
			local grp = vim.api.nvim_create_augroup("solstice_classic_selection", { clear = true })
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "aether",
				group = grp,
				callback = force_selection,
			})
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			force_selection()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
