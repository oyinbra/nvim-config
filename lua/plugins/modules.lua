return {
  { -- Additional text objects via treesitter
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = "nvim-treesitter",
  },
  -- syntax hightlighting for kitty
  { "fladson/vim-kitty" },
  -- visula multi cursor
  { "mg979/vim-visual-multi" },
  -- Old settings
  { "ap/vim-css-color" }, -- CSS Color Preview
  { "wakatime/vim-wakatime" }, -- Time spent on nvim. API key needed
  { "rafi/awesome-vim-colorschemes" }, -- Color Schemes
  -- { "tpope/vim-surround" }, -- Surrounding ysw
  { "mattn/emmet-vim" },
  { "airblade/vim-gitgutter" },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter"
  },
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
  -- { "typicode/bg.nvim" }, -- automatically sync your terminal background with your color scheme
}
