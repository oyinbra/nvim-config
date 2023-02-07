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

require('lazy').setup('plugins')

-- ################################################################################
-- #                                                                              #
-- #                             REQUIRE  CONFIGURATIONS                          #
-- #                                                                              #
-- ################################################################################

require('options')
require('keybindings')
require('lsp')
-- require('whichkey-config')
require('comment-config')
require('bufferline-config')
require('lualine-config')
require('null-ls-config')
require('lspsaga-config')
require('treesitter-config')
require('nvim-tree-config')
require('dashboard-config')
require('autopairs-config')
require('twilight-config')
require('zen-mode-config')
require('presence-config')
require('colorizer-config')
require('telescope-config')
require('toggleterm-config')
require('presence-config')
