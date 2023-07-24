return {
  "AstroNvim/astrocommunity",
  -- Available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- AI Completion and prompt
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.chatgpt-nvim" },

  -- Language support
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.python" },

  -- Renaming variables
  { import = "astrocommunity.lsp.inc-rename-nvim" },

  -- Time Tracking
  { import = "astrocommunity.media.vim-wakatime" },

  -- Noice command line
  -- NOTE: This is only an installation, for the actual plugin configuration see plugins/user.lua
  { import = "astrocommunity.utility.noice-nvim" },

  -- Testing
  -- TODO: Add support for other testing frameworks and keymaps
  { import = "astrocommunity.test.neotest" },

  -- Highlight current line with different color depending on mode
  { import = "astrocommunity.color.modes-nvim" },

  -- Highlight TODO, FIXME, etc. comments
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  -- Better quickfix window
  { import = "astrocommunity.debugging.nvim-bqf" },

  -- Show diagnostics in virtual lines
  -- NOTE: This plugin is not working properly:
  --       The border of completion menu is not offseted by number of proceeding diagnostic lines
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },

  -- Disable arrow keys, repeated hjlk, etc.
  -- NOTE: This plugin is not working properly:
  --       Repeated commands like `dd` did not work on previous versions
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
}
