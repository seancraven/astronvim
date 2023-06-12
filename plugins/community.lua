return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
  { import = "astrocommunity.utility.transparent-nvim" },
  {
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<M-l>",
          accept_word = false,
          accept_line = false,
          next = "<M-j>",
          prev = "<M-k>",
          dismiss = "<M-h>",
        },
      },
    },
  },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      fd_binary_name = "fdfind",
    },
  },
}
