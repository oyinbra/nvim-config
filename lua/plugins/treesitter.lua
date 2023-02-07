return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  run = function()
    pcall(require('nvim-treesitter.install').update {with_sync = true})
  end,
  config = function()
    -- [[ Configure Treesitter ]]
    -- See `:help nvim-treesitter`
    require('nvim-treesitter.configs').setup {
      -- Add languages to be installed here that you want installed for treesitter
      ensure_installed = {'c', 'cpp', 'go', 'lua', 'python', 'rust', 'typescript', 'help', 'vim'},

      highlight = {enable = true},
      indent = {enable = true, disable = {'python'}},
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<c-space>',
          node_incremental = '<c-space>',
          scope_incremental = '<c-s>',
          node_decremental = '<c-backspace>'
        }
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ['aa'] = '@parameter.outer',
            ['ia'] = '@parameter.inner',
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner'
          }
        },
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {[']m'] = '@function.outer', [']]'] = '@class.outer'},
          goto_next_end = {[']M'] = '@function.outer', [']['] = '@class.outer'},
          goto_previous_start = {['[m'] = '@function.outer', ['[['] = '@class.outer'},
          goto_previous_end = {['[M'] = '@function.outer', ['[]'] = '@class.outer'}
        },
        swap = {
          enable = true,
          swap_next = {['<leader>a'] = '@parameter.inner'},
          swap_previous = {['<leader>A'] = '@parameter.inner'}
        }
      }
    }

    -- vim.lsp.handlers['textDocument/publishDiagnostics'] =
    --     vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    --       underline = true,
    --       virtual_text = {spacing = 5, severity_limit = 'Warning'},
    --       update_in_insert = true
    --     })
    -- require'nvim-treesitter.configs'.setup {
    --   ensure_installed = {"html", "javascript", "lua"},
    --   highlight = {enable = true, additional_vim_regex_highlighting = false},
    --   autotag = {enable = true},
    --   rainbow = {
    --     enable = true,
    --     extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    --     max_file_lines = nil -- Do not enable for files with more than n lines, int
    --     -- colors = {}, -- table of hex strings
    --     -- termcolors = {} -- table of colour name strings
    --   },
    --   autopairs = {enable = true}
    -- }
  end
}
