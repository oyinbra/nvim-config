--
-- Lazy vim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
      "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.termguicolors = true

-- Lazy plugins plugins
require('lazy').setup('plugins')

-- Lsp settings
require('lsp')

-- Options
require('options')

-- Keybindings
require('keymaps')

-- vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
-- Tree Toggle
-- map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
map('n', '<leader>e', ':NeoTreeFloatToggle<CR>', { noremap = true, silent = true })
