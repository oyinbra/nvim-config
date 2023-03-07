-- ################################################################################
-- #                                                                              #
-- #                                    TODO                                      #
-- #       NOTE: Highlight, list and search todo comments in your projects        #
-- #                                                                              #
-- ################################################################################

return {
  -- todo comments
  {
    "folke/todo-comments.nvim",
    -- enabled = false,
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = { "BufReadPost", "BufNewFile" },
    config = true,
    -- stylua: ignore
    keys = {
      { "]t",         function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
      { "[t",         function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
      { "<leader>tt", "<cmd>TodoTrouble<cr>",                              desc = "Todo (Trouble)" },
      { "<leader>tT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>",      desc = "Todo/Fix/Fixme (Trouble)" },
      { "<leader>tt", "<cmd>TodoTelescope<cr>",                            desc = "Todo" },
    },
  }
}
