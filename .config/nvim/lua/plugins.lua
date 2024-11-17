-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure plugins
require("lazy").setup({
    -- Color scheme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd[[colorscheme tokyonight]]
        end,
    },

    -- Status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require('lualine').setup()
        end
    },

    -- Mason
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",    -- Lua
                    "pyright",   -- Python
                    "bashls",    -- Bash
                    -- Add other servers you want auto-installed
                },
                automatic_installation = true,
            })
        end
    },

    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({buffer = bufnr})
            end)

            require('mason-lspconfig').setup({})
            require('mason-lspconfig').setup_handlers({
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
                -- Add specific server configs here if needed
                ["lua_ls"] = function()
                    require('lspconfig').lua_ls.setup({
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { 'vim' }
                                }
                            }
                        }
                    })
                end,
            })
        end
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = { "lua", "vim", "vimdoc" },
                auto_install = true,
                highlight = {
                    enable = true,
                },
            })
        end
    },

    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files)
            vim.keymap.set('n', '<leader>fg', builtin.live_grep)
            vim.keymap.set('n', '<leader>fb', builtin.buffers)
        end
    },
})