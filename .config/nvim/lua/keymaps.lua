-- Helper function for mapping
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- Leader key
vim.g.mapleader = ' '

-- Better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Stay in indent mode
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Move text up and down
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

-- Clear search highlight
map('n', '<leader>h', ':nohlsearch<CR>')

-- File explorer
map('n', '<leader>e', ':Ex<CR>')

-- Buffer navigation
map('n', '<S-l>', ':bnext<CR>')
map('n', '<S-h>', ':bprevious<CR>')

-- Save and quit shortcuts
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q<CR>')