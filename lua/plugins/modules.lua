return {
  -- notify setup
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        stages = "fade_in_slide_out",
        background_colour = "FloatShadow",
        timeout = 3000,
      })
      vim.notify = require("notify")
    end,
  },
  { -- Additional text objects via treesitter
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = "nvim-treesitter",
  },
  -- visula multi cursor
  { "mg979/vim-visual-multi" },
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },

  -- Old settings
  { "ap/vim-css-color" }, -- CSS Color Preview
  { "wakatime/vim-wakatime" }, -- Time spent on nvim. API key needed
  { "rafi/awesome-vim-colorschemes" }, -- Color Schemes
  { "tpope/vim-surround" }, -- Surrounding ysw
  { "mattn/emmet-vim" },
  { "airblade/vim-gitgutter" },
  { "windwp/nvim-ts-autotag",       event = "InsertEnter" },
  { "p00f/nvim-ts-rainbow" },
  {
    "folke/which-key.nvim",
    event = "BufWinEnter",
  },
  { "hrsh7th/cmp-buffer" },
  { "onsails/lspkind-nvim" },
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    config = function()
      require("persistence").setup()
    end,
  },
}
