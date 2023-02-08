-- ################################################################################
-- #                                                                              #
-- #                                KEYBINDINGS                                   #
-- #                                                                              #
-- ################################################################################
-- vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

-- Move text up and down
-- map("x", "<A-j>", ":move '>+1<CR>gv-gv")
-- map("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- splits
-- map("n", "<C-w-s>", ":split")
-- map("n", "<C-w-v>", ":vsplit")

-- Press to return back to normal instead of using the escape key all the time
map('i', 'pl', '<ESC>', { noremap = true, silent = false })
map('i', 'lp', '<ESC>', { noremap = true, silent = false })

-- Tree Toggle
-- map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- map('n', '<leader>e', ':NeoTreeFloatToggle<CR>', { noremap = true, silent = true })

map('v', '<', '<gv', { noremap = true, silent = false })
map('v', '>', '>gv', { noremap = true, silent = false })

map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
    { noremap = true, silent = true })
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>",
    { noremap = true, silent = true })

-- Keybindings for persistence
-- restore the session for the current directory
-- vim.api.nvim_set_keymap("n", "<leader>ls", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
-- vim.api.nvim_set_keymap("n", "<leader>lr",
-- [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
-- vim.api.nvim_set_keymap("n", "<leader>ld", [[<cmd>lua require("persistence").stop()<cr>]], {})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
