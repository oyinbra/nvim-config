-- ################################################################################
-- #                                                                              #
-- #                                CHATGPT                                       #
-- #       NOTE: Neovim plugin for interacting with OpenAI GPT-3 chatbot          #
-- #                                                                              #
-- ################################################################################

return {
  {
    "jackMort/ChatGPT.nvim",
    -- enabled = false,
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}

