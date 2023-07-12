-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>ma"] = { function() require("harpoon.mark").add_file() end, desc = "Add file to harpoon" },
    ["<leader>mj"] = { function() require("harpoon.ui").nav_file(1) end, desc = "Navigate to harpoon file 1" },
    ["<leader>mh"] = { function() require("harpoon.ui").nav_file(2) end, desc = "Navigate to harpoon file 2" },
    ["<leader>mk"] = { function() require("harpoon.ui").nav_file(3) end, desc = "Navigate to harpoon file 3" },
    ["<leader>ml"] = { function() require("harpoon.ui").nav_file(4) end, desc = "Navigate to harpoon file 4" },
    ["<leader>mt"] = {
      function() require("harpoon.ui").toggle_quick_menu() end,
      desc = "Navigate to harpoon terminal",

      -- Nvim tmux
      -- ["<C-h>"] = { function() require("nvim-tmux-navigation").NvimTmuxNavigateRight() end },
      -- ["<C-j>"] = { function() require("nvim-tmux-navigation").NvimTmuxNavigateDown() end },
      -- ["<C-k>"] = { function() require("nvim-tmux-navigation").NvimTmuxNavigateUp() end },
      -- ["<C-l>"] = { function() require("nvim-tmux-navigation").NvimTmuxNavigateLeft() end },
      -- ["<C-Space>"] = { function() require("nvim-tmux-navigation").NvimTmuxNavigateNext() end },
      -- ["<C-\\>"] = { function() require("nvim-tmux-navigation").NvimTmuxNavigateLastActive() end },
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>pp"] = { "<cmd>set paste<cr>", desc = "Paste from clipboard" },

    ["<leader>y"] = { '"+y', desc = "Yank to system clipboard" },
    ["<leader>#c"] = { function() require("sniprun.display").close() end },
    ["<leader>#r"] = { function() require("sniprun").reset() end },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    ["<leader>y"] = { '"+y', desc = "Yank to system clipboard" },
    ["<leader>#"] = { function() require("sniprun").run "v" end, desc = "Run Selected Snippet In Repl" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
