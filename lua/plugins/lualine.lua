-- ################################################################################
-- #                                                                              #
-- #                                  LUALINE                                     #
-- #                      NOTE: neovim statusline plugin                          #
-- #                                                                              #
-- ################################################################################

return {
  'nvim-lualine/lualine.nvim',
  enabled = false,
  dependencies = 'nvim-tree/nvim-web-devicons',
  -- opt = true,
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        -- theme = 'dracula',
        component_separators = { left = '', right = '' }
        -- section_separators = {left = '', right = ''}
      }
    }
    -- Themes list https://github.com/nvim-luaVline/lualine.nvim/blob/master/THEMES.md
  end
}
