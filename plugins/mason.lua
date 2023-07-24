astro_utils = require 'astronvim.utils'
-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = astro_utils.list_insert_unique(opts.ensure_installed, {
        -- "lua_ls",
        "unocss",
        "volar",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = astro_utils.list_insert_unique(opts.ensure_installed, {
        -- "eslint_d",
        -- "standardjs",
        -- TODO: Add eslint-lsp maybe?
      })

      -- delete prettierd and eslint_d handlers
      opts.handlers.prettierd = nil
      opts.handlers.eslint_d = nil
    end,
  },
  -- TODO: Configure debug adapters for web
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = astro_utils.list_insert_unique(opts.ensure_installed, {
        "python",
        "js",
      })

      opts.handlers = {
        -- all sources with no handler will be handled by this function
        function(config) 
          require('mason-nvim-dap').default_setup(config)
        end,

        chrome = function(config)
          table.insert(config.filetypes, 'vue')

          -- apply config
          require('mason-nvim-dap').default_setup(config)
        end,
      }
    end,
  },
}
