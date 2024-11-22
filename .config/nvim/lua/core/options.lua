local opt = vim.opt
local g = vim.g

-- General
opt.number = true               -- Show line number
opt.relativenumber = true       -- Show relative line numbers
opt.mouse = 'a'                 -- Enable mouse support
opt.clipboard = 'unnamedplus'   -- Use system clipboard
opt.termguicolors = true        -- Enable 24-bit RGB colors
opt.updatetime = 300            -- Faster completion

-- Search
opt.ignorecase = true           -- Ignore case in search patterns
opt.smartcase = true            -- Override ignorecase when search pattern has uppercase
opt.hlsearch = true             -- Highlight all matches on previous search pattern
opt.incsearch = true            -- Show matches while typing search pattern

-- Indent
opt.expandtab = true            -- Convert tabs to spaces
opt.tabstop = 4                 -- Insert 4 spaces for a tab
opt.shiftwidth = 4              -- Number of spaces inserted for indentation
opt.smartindent = true          -- Make indenting smart

-- Display
opt.wrap = false                -- Display long lines as just one line
opt.cursorline = true           -- Highlight the current line
opt.scrolloff = 8               -- Minimal number of lines to keep above and below the cursor
opt.signcolumn = "yes"          -- Always show the signcolumn

-- Leader key
g.mapleader = " "
g.maplocalleader = " "