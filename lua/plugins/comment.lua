-- ################################################################################
-- #                                                                              #
-- #                                  COMMENT                                     #
-- #        NOTE: A comment toggler for Neovim using gc or gcc to comment         #
-- #                                                                              #
-- ################################################################################

return {
  "terrortylor/nvim-comment",
  config = function()
    require('nvim_comment').setup({
      -- line_mapping = "<leader>cl",
      -- operator_mapping = "<leader>c",
      comment_empty = false
    })
  end
}
