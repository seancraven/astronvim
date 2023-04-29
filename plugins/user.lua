return {
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
  {
    "ThePrimeagen/harpoon",
    as = "harpoon",
    config = function() require("harpoon").setup() end,
  },
  -- {
  --   -- Manually installled
  --   "Pocco81/auto-save.nvim",
  --   event = { "User AstroFile", "InsertEnter" },
  --   opts = {},
  -- },
}
-- some comment
