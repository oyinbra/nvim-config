vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_indent_markers = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {width = 30, mappings = {list = {{key = "u", action = "dir_up"}}}},
  renderer = {group_empty = true},
  filters = {dotfiles = true},
  hijack_directories = {enable = true, auto_open = true}
})
vim.cmd [[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
