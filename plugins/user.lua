return {

  {
    "ThePrimeagen/harpoon",
    as = "harpoon",
    config = function() require("harpoon").setup() end,
  },
  {
    "folke/tokyonight.nvim",
    as = "tokyonight",
    lazy = false,
    priority = 1000,
    opts = {
      style = "Moon",
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
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
