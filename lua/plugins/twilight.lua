-- ################################################################################
-- #                                                                              #
-- #                              TWILIGHT                                        #
-- #   NOTE: dims inactive portions of the code you're editing using TreeSitter.  #
-- #                                                                              #
-- ################################################################################

return {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup {
      {
        dimming = {alpha = 0.25, color = {"Normal", "#ffffff"}, inactive = true},
        context = 10,
        treesitter = true,
        expand = {"function", "method", "table", "if_statement"}
      }
    }
  end
}
