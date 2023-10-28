-- ################################################################################
-- #                                                                              #
-- #                                  BLANKLINE                                   #
-- #                      NOTE: Indent guides for Neovim                          #
-- #                                                                              #
-- ################################################################################

return {
  "lukas-reineke/indent-blankline.nvim",
  -- enabled = false,
  main = "ibl",
  opts = {},
  event = "BufRead",
  config = function()
    require("ibl").setup {
    }
  end
}
