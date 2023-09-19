-- ################################################################################
-- #                                                                              #
-- #                                     NULL LS                                  #
-- #      NOTE: Injects LSP diagnostics, code actions, and more via Lua           #
-- #                                                                              #
-- ################################################################################

return {
  "jose-elias-alvarez/null-ls.nvim",
  -- enabled = false,
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local null_ls = require "null-ls"

    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    local formatting = null_ls.builtins.formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    -- local diagnostics = null_ls.builtins.diagnostics

    null_ls.setup {
      debug = false,
      sources = {
        formatting.prettier.with {
          extra_filetypes = { "toml", "solidity", "md" },
          extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
        },
        -- formatting.gofumpt,
        -- formatting.autopep8,
        -- formatting.stylua,
        -- formatting.markdownlint.with {
        --   filetypes = { "md" }
        -- },
        formatting.prettier,
        formatting.clang_format.with {
          filetypes = { "cpp", "c" },
        },
      },
    }
  end,
}
