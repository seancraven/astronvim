return {

	{
		"ThePrimeagen/harpoon",
		name = "harpoon",
		config = function() require("harpoon").setup() end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = false,
		priority = 1000,
		opts = {
			style = "Storm",
		},
	},
	{
		"linux-cultist/venv-selector.nvim",
		opts = {
			fd_binary_name = "fdfind",
		},
	},
	-- {
	-- 	"alexghergh/nvim-tmux-navigation",
	-- 	name = "nvim-tmux-navigation",
	-- 	config = function()
	-- 		require("nvim-tmux-navigation").setup {
	-- 			disable_when_zoomed = true,
	-- 		}
	-- 	end,
	-- },
	{
		"michaelb/sniprun",
		name = "sniprun",
		build = "bash ./install.sh",
		lazy = false,
		config = function()
			require("sniprun").setup {
				repl_enable = { "Python3_Origional" },
				selected_interpreters = { "Python3_Origional" },
			}
		end,
	},
}
-- You can also add new plugins here as well:
-- Add plugins, the lazy syntax
-- "andweeb/presence.nvim",
-- {
--   "ray-x/lsp_signature.nvim",
--   event = "BufRead",
--   config = function()
--     require("lsp_signature").setup()
--   end,
-- },
