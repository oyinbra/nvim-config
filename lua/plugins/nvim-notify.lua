-- ################################################################################
-- #                                                                              #
-- #                                   NOTIFY                                     #
-- #       NOTE: A fancy, configurable, notification manager for NeoVim           #
-- #                                                                              #
-- ################################################################################

return {
  -- notify setup
  {
    "rcarriga/nvim-notify",
    -- enabled = false,
    event = "BufEnter",
    config = function()
      require("notify").setup({
        stages = "fade_in_slide_out",
        background_colour = "FloatShadow",
        -- background_colour = "#121212",
        timeout = 3000,
        max_width = 80,
      })
      vim.notify = require("notify")
    end,
  },
}
