return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Disable prettierd for js, ts and vue files
      null_ls.builtins.formatting.prettierd.with({
          filetypes = { "json", "css", "graphql", "less", "markdown", "scss", "handlebars", "markdown.mdx", "yaml", "jsonc", "html" },
      }),
    }
    return config -- return final config table
  end,
}
