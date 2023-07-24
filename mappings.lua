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

    -- Neotest
    -- TODO: Add mappings for Neotest
    ["<leader>T"] = { name = "Neotest" },

    -- IntelliJ Bindings
    -- Alt-Enter for LSP actions
    ["<M-CR>"] = { 
      function() vim.lsp.buf.code_action() end, 
      desc = "LSP Code Action" 
    },

    -- LSP bindings
    -- Show type under the cursor
    ["<leader>lH"] = {
      function ()
        vim.lsp.buf.hover()
      end,
      desc = "Hover",
    },

    -- Comment line with <C-/>
    ["<C-/>"] = {
      function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Toggle comment line",
    },
  },
  i = {
    -- Comment line with <C-/>
    ["<C-/>"] = {
      function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Toggle comment line",
    },
  },
  v = {
    -- Comment selection with <C-/>
    ["<C-/>"] = {
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment selection",
    },
  },
  t = {
    -- Escape to normal mode with <C-[>
    ["<C-[>"] = { "<C-\\><C-n>", desc = "Escape to normal mode" },
  },
}
