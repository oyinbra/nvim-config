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
    event = "BufEnter",
    -- enabled = false,
    config = function()
      require("notify").setup({
        stages = "fade_in_slide_out",
        -- background_colour = "FloatShadow",
        timeout = 3000,
        background_colour = "#121212",
        -- max_width = 80,
      })
      vim.notify = require("notify")
    end,
  },
}
