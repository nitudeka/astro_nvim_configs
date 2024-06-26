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
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>am"] = { 
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Harpoon menu"
    },
    ["<leader>aa"] = { 
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Harpoon add file"
    },
    ["<leader>aj"] = { 
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Harpoon go to 1st file"
    },
    ["<leader>ak"] = { 
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Harpoon go to 2nd file"
    },
    ["<leader>al"] = { 
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Harpoon go to 3rd file"
    },
    ["<leader>a;"] = { 
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "Harpoon go to 4th file"
    },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
