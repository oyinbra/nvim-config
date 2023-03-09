-- ################################################################################
-- #                                                                              #
-- #                               NVIM SURROUND                                  #
-- #      NOTE:   Add/change/delete surrounding delimiter pairs with ease.        #
-- #                                                                              #
-- ################################################################################

return {
  "kylechui/nvim-surround",
  -- enabled = false,
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = function()
    require("nvim-surround").setup({
      -- Configuration here, or leave empty to use defaults
    })
  end
}
