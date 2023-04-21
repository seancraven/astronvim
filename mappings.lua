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
    ["<leader>ma"] = { "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Add file to harpoon" },
    ["<leader>mh"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Navigate to harpoon file 2" },
    ["<leader>mj"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Navigate to harpoon file 1" },
    ["<leader>mk"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Navigate to harpoon file 3" },
    ["<leader>ml"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Navigate to harpoon file 4" },
    ["<leader>mt"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Navigate to harpoon terminal" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
