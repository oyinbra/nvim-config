-- ################################################################################
-- #                                                                              #
-- #                                  NVIM TREE                                   #
-- #                     NOTE: File explorer for neovim                           #
-- #                                                                              #
-- ################################################################################

return {
  'nvim-tree/nvim-tree.lua',
  -- dependencies = 'nvim-tree/nvim-web-devicons',
  -- enabled = false, -- optional, for file icons
  module = true,
  cmd = {
    "NvimTreeOpen",
    "NvimTreeToggle",
    "NvimTreeFocus",
    "NvimTreeFindFile",
    "NvimTreeFindFileToggle",
  },
  dependencies = {
    {
      "nvim-tree/nvim-web-devicons",
      's1n7ax/nvim-window-picker',
      config = function()
        local icons = require("nvim-web-devicons")

        icons.set_icon({
          deb = { icon = "", name = "Deb", color = "#a1b7ee" },
          lock = { icon = "", name = "Lock", color = "#c4c720" },
          mp3 = { icon = "", name = "Mp3", color = "#d39ede" },
          mp4 = { icon = "", name = "Mp4", color = "#9ea3de" },
          out = { icon = "", name = "Out", color = "#abb2bf" },
          ["robots.txt"] = { icon = "ﮧ", name = "Robots", "#abb2bf" },
          ttf = { icon = "", name = "TrueTypeFont", "#abb2bf" },
          rpm = { icon = "", name = "Rpm", "#fca2aa" },
          woff = { icon = "", name = "WebOpenFontFormat", color = "#abb2bf" },
          woff2 = { icon = "", name = "WebOpenFontFormat2", color = "#abb2bf" },
          xz = { icon = "", name = "Xz", color = "#519aba" },
          zip = { icon = "", name = "Zip", color = "#f9d71c" },
          snippets = { icon = "", name = "Snippets", color = "#51afef" },
          ahk = { icon = "", name = "AutoHotkey", color = "#51afef" },
        })
      end,
    },
  },
  tag = 'nightly', -- optional, updated every week. (see issue #1193)
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true
    vim.g.nvim_tree_width = 25
    vim.g.nvim_tree_gitignore = 1
    vim.g.nvim_tree_indent_markers = 1

    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      -- view = { width = 30, mappings = { list = { { key = "u", action = "dir_up" } } } },
      -- renderer = { group_empty = true },
      filters = { dotfiles = true },
      hijack_directories = { enable = true, auto_open = true },
      diagnostics = {
        enable = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      renderer = {
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
            },
            git = {
              unstaged = "",
              staged = "S",
              unmerged = "",
              renamed = "➜",
              deleted = "",
              untracked = "U",
              ignored = "◌",
            },
          },
        },
      },
      view = {
        cursorline = true,
        float = {
          enable = false,
          quit_on_focus_loss = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 30,
            height = 30,
            row = 1,
            col = 1,
          },
        },
      }
    })
    vim.cmd [[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
  end
}
