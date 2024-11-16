-- General
vim.opt.mouse = 'a'                -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.swapfile = false          -- No swap file
vim.opt.undofile = true           -- Persistent undo
vim.opt.updatetime = 300          -- Faster completion

-- UI
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Relative line numbers
vim.opt.signcolumn = 'yes'        -- Always show signcolumn
vim.opt.cursorline = true         -- Highlight current line
vim.opt.showmode = false          -- Don't show mode (use statusline instead)
vim.opt.splitbelow = true         -- Open new splits below
vim.opt.splitright = true         -- Open new splits right
vim.opt.termguicolors = true      -- True color support

-- Search
vim.opt.ignorecase = true         -- Ignore case in search
vim.opt.smartcase = true          -- Smart case
vim.opt.hlsearch = true           -- Highlight search
vim.opt.incsearch = true          -- Incremental search

-- Tabs and indents
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.shiftwidth = 4            -- Size of indent
vim.opt.tabstop = 4               -- Size of tab
vim.opt.smartindent = true        -- Smart indenting