-- ################################################################################
-- #                                                                              #
-- #                                  STALINE                                     #
-- #         NOTE: A modern lightweight statusline and bufferline plugin          #
-- #                                                                              #
-- ################################################################################

return {
  "tamton-aquib/staline.nvim",
  -- enabled = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons"

  },
  config = function()
    local percentage = function()
      local current_line = vim.fn.line(".")
      local total_lines = vim.fn.line("$")
      local chars = {
        "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██"
      }
      local line_ratio = current_line / total_lines
      local index = math.ceil(line_ratio * #chars)
      return chars[index]
    end
    require("staline").setup({
      sections = {
        left = { "  ", "mode", "  ", "lsp_name", "  ", "branch" },
        mid = { "lsp" },
        right = {
          "file_name",
          -- "line_column",
          percentage, ' ',
        },
      },
      mode_colors = {
        i = "#ff0040",
        n = "#FFFFFF",
        c = "#00ff94",
        v = "#FFA200",
      },
      defaults = {
        expand_null_ls = true,
        true_colors = true,
        line_column = " [%l/%L] :%c  ",
        branch_symbol = "  ",
      },
      special_table = {
        NvimTree        = { 'File Explorer', ' ' },
        lazy            = { 'Lazy', ' ' },
        TelescopePrompt = { 'Telescope', ' ' },
        Trouble         = { 'Trouble', ' ' },
      },
    })

    require("stabline").setup({
      style = "bubble",
      bg = "#ff0040",
      defaults = {
        true_colors = true,
      },
      sections = {
        mid = { { "RandomHighlight", "-file_name" } },
      },
    })
  end
}
