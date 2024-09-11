-- ################################################################################
-- #                                                                              #
-- #                               OPTIONS CONFIG                                 #
-- #                                                                              #
-- #                                                                              #
-- ################################################################################

local M = {}
local opt = vim.opt

vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10
vim.o.cmdheight = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100
vim.o.clipboard = "unnamedplus" -- allows yanking to system clipboard
-- vim.o.noswapfile = true
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.mouse = "a"
vim.wo.wrap = false
vim.wo.number = true -- set numbers
opt.relativenumber = true -- Relative line numbers
-- opt.statuscolumn = "%l %r"
vim.o.cursorline = true
vim.wo.signcolumn = "yes"
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.api.nvim_set_var("modifiable", 1)

-- Save undo history
vim.o.undofile = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

-- vim.o.autowrite = true -- Enable auto write
vim.o.confirm = true -- Confirm to save changes before exiting modified buffer
-- vim.o.formatoptions = "jcroqlnt" -- tcqj
-- vim.o.grepformat = "%f:%l:%c:%m"
-- vim.o.grepprg = "rg --vimgrep"
-- vim.o.splitbelow = true -- Put new windows below current
-- vim.o.splitright = true -- Put new windows right of current
return M

