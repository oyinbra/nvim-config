-- ################################################################################
-- #                                                                              #
-- #                             TOGGLE TERMINAL                                  #
-- #   NOTE: A neovim lua plugin to help easily manage multiple terminal windows  #
-- #                                                                              #
-- ################################################################################

return {
  "akinsho/toggleterm.nvim",
  config = function()
    require"toggleterm".setup {
      size = 13,
      open_mapping = [[<c-\>]], -- ctrl + / = New terminal
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = '1',
      start_in_insert = true,
      persist_size = true,
      direction = 'horizontal' -- Terminal will be dislay at the bottom
    }
  end
}
