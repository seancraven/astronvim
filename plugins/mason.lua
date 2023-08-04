-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      -- ensure_installed = { "lua_ls" },
      config = function()
        require("lspconfig").grammarly.setup {
          init_options = { clientId = "client_BaDkMgx4X19X9UxxYRCXZo" },
          -- cmd = { "node", "/home/sean/.local/share/grammarly/bin/grammarly-language-server", "--stdio" },
          -- filetypes = { "markdown", "tex", "text" },
          -- root_dir = require("lspconfig").util.root_pattern(".git", vim.fn.getcwd()),
          -- settings = {
          --   grammarly = {
          --     autoDownload = false,
          --     enableInlineChecking = "all",
          --     enableSpellChecking = true,
          --     enableSuggestions = true,
          --     useLocales = true,
          --   },
          -- },
        }
        local words = {}
        for word in io.open(vim.fn.stdpath "config" .. "/spell/en.utf-8.add", "r"):lines() do
          table.insert(words, word)
        end
        require("lspconfig").ltex.setup {
          settings = {
            ltex = {
              dictionary = {
                ["en-GB"] = words,
              },
            },
          },
        }
      end,
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      -- ensure_installed = { "prettier", "stylua" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
