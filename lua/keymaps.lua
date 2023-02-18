-- ################################################################################
-- #                                                                              #
-- #                                   KEYMAPS                                    #
-- #                                                                              #
-- ################################################################################

M = {}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Better window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)

-- TODO: To yank text out of vim into system clipboard manager
map('n', '<C-S>c', '"+y', opts)

-- Move text up and down
-- map("x", "<A-j>", ":move '>+1<CR>gv-gv")
-- map("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- NOTE: Press jk or lk to return back to normal mode instead of using the escape key all the time
map('i', 'kl', '<ESC>', opts)
map('i', 'lk', '<ESC>', opts)
map('i', 'JK', '<ESC>', opts)
map('i', 'LK', '<ESC>', opts)

-- Tree Toggle
-- map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
    {noremap = true, silent = true})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>",
    {noremap = true, silent = true})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
      vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*'
})

return M
