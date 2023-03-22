-- ################################################################################
-- #                                                                              #
-- #                                  COLORSCHEME                                 #
-- #                 NOTE: Just for adding colorschem plugins                     #
-- #                                                                              #
-- ################################################################################

return {
  {
    "Alexis12119/nightly.nvim",
    lazy = true,
  },
  {
    "arturgoms/moonbow.nvim"
  },
  {
    "rose-pine/neovim",
  },

  {
    "marko-cerovac/material.nvim",
    lazy = true,
    config = function()
      vim.g.material_style = "deep ocean"
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
  },

  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = true,
  },

  {
    "rmehri01/onenord.nvim",
    lazy = true,
  },

  {
    "Mofiqul/vscode.nvim",
    lazy = true,
  },

  {
    "navarasu/onedark.nvim",
    lazy = true,
  },

  {
    "tanvirtin/monokai.nvim",
    lazy = true,
  },

  {
    "Mofiqul/dracula.nvim",
    lazy = true,
  },

  {
    "JoosepAlviste/palenightfall.nvim",
    lazy = true,
  },

  {
    "bluz71/vim-nightfly-colors",
    lazy = true,
  },
}
