return {
  -- notify setup
  {
    'rcarriga/nvim-notify',
    config = function()
      require("notify").setup {
        stages = 'fade_in_slide_out',
        background_colour = 'FloatShadow',
        timeout = 3000
      }
      vim.notify = require('notify')
    end
  }, { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim', -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim'
    }
  }, { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip'}
  }, {'rose-pine/neovim'}, {'folke/tokyonight.nvim'}, {'navarasu/onedark.nvim'},
  {'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons', opt = true}},
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update {with_sync = true})
    end
  }, { -- Additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = 'nvim-treesitter'
  }, {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim"
    }
  }, {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons' -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }, {
    'tamton-aquib/staline.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons', opt = true},
    event = "BufRead"
    -- config = "require('staline-config')"
  }, {"folke/todo-comments.nvim", dependencies = "nvim-lua/plenary.nvim"}, {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = "BufWinEnter"
    -- config = "require('bufferline-config')"
  }, -- Old settings
  -- {'terryma/vim-multiple-cursors'}, -- CTRL + N for multiple cursors
  {'ap/vim-css-color'}, -- CSS Color Preview
  {'rafi/awesome-vim-colorschemes'}, -- Color Schemes
  {'tpope/vim-surround'}, -- Surrounding ysw
  {'mattn/emmet-vim'}, {'airblade/vim-gitgutter'},
  {'windwp/nvim-ts-autotag', event = "InsertEnter", dependecies = "nvim-treesitter"},
  {'p00f/nvim-ts-rainbow', dependecies = "nvim-treesitter"},
  {'windwp/nvim-autopairs', dependecies = "nvim-cmp"}, {
    'folke/which-key.nvim',
    event = "BufWinEnter"
    -- config = "require('lazy').setup(whichkey-config)"
  }, {
    'nvim-telescope/telescope.nvim',
    dependencies = {{'nvim-lua/plenary.nvim'}},
    cmd = "Telescope"
    -- config = "require('telescope-config')"
  }, -- {"williamboman/mason.nvim"},
  -- {"williamboman/mason-lspconfig.nvim"},
  -- {'neovim/nvim-lspconfig', config = "require('lsp')"},
  {'hrsh7th/cmp-buffer'}, -- {'hrsh7th/nvim-cmp'},
  -- -- { 'williamboman/nvim-lsp-installer' }
  -- -- { 'hrsh7th/cmp-vsnip' }
  -- {'hrsh7th/vim-vsnip'},
  -- {'hrsh7th/vim-vsnip-integ'},
  {'onsails/lspkind-nvim'}, {'norcalli/nvim-colorizer.lua', event = "BufRead"}, {
    'lewis6991/gitsigns.nvim',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      require('gitsigns').setup {current_line_blame = true}
    end
  }, {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    opts = {
      -- config
    },
    dependencies = {{'nvim-tree/nvim-web-devicons'}}
  }, {"lukas-reineke/indent-blankline.nvim", event = "BufRead"}, {"akinsho/toggleterm.nvim"},
  {"terrortylor/nvim-comment"}, {'tami5/lspsaga.nvim'}, {'jose-elias-alvarez/null-ls.nvim'},
  {"folke/zen-mode.nvim"}, {"folke/twilight.nvim"}, {'andweeb/presence.nvim'},

  -- Plugins from lazy vim
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    config = function()
      require("persistence").setup()
    end
  }

}
