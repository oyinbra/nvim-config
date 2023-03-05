-- ################################################################################
-- #                                                                              #
-- #                                  COLORIZER                                   #
-- #        NOTE: A high-performance color highlighter for Neovim                 #
-- #                                                                              #
-- ################################################################################

return {
  'norcalli/nvim-colorizer.lua',
  event = "BufRead",
  config = function()
    require'colorizer'.setup()
  end
}
