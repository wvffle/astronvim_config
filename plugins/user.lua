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

  -- Auto Save
  -- NOTE: This plugin is not working properly:
  --       It does not respect activation events and constantly saves the file
  --       Better to save manually with `:w`
  -- { "okuuva/auto-save.nvim",
  --   cmd = "ASToggle", -- optional for lazy loading on command
  --   event = { "InsertLeave", "TextChanged" } -- optional for lazy loading on trigger events
  -- },

  -- Replace in quickfix window
  -- The workflow is:
  -- 1. Find all occurences of a word with `<leader>fw` (leader is space by default)
  -- 2. Navigate using `<C-j>` and `<C-k>` (Ctrl-j, Ctrl-k)
  -- 3. Select desired lines with `<Tab>`
  -- 4. Open quickfix window with `<M-q>` (Alt-q)
  -- 5. Replace all occurences with `:Qfreplace`
  -- 6. Save and close quickfix window with `:wq`
  {
    "thinca/vim-qfreplace",
    cmd = "Qfreplace",
  },

  -- Ayu colorscheme
  {
    "Shatur/neovim-ayu",
    config = function()
      require('ayu').setup({
        mirage = false,
      })
    end,
  },


  -- Noice command line
  -- NOTE: This is only a configuration, for the actual plugin installation see plugins/community.lua
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    -- Force load in Neovide
    cond = true,

    opts = {
      presets = {
        -- Enable borders for LSP diagnostics 
        lsp_doc_border = true,
      },
    },
  },
}
