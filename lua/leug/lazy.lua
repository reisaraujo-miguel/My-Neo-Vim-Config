local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    'tpope/vim-fugitive',

    'norcalli/nvim-colorizer.lua',

    'rust-lang/rust.vim',

    'simrat39/rust-tools.nvim',

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
        config = true,
    },

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        after = 'catppuccin',
        config = function()
            require('bufferline').setup {
                highlights = require("catppuccin.groups.integrations.bufferline").get()
            }
        end
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
    },

    {{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}},


    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },

    {
        "windwp/nvim-ts-autotag",
        wants = "nvim-treesitter",
        config = function()
            require("nvim-ts-autotag").setup { enable = true }
        end,
    },

    {
        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- LSP Support
        {
            'neovim/nvim-lspconfig',
            dependencies = {
                {'hrsh7th/cmp-nvim-lsp'},
            },
        },

        -- Autocompletion
        {
            'hrsh7th/nvim-cmp',
            dependencies = {
                {'L3MON4D3/LuaSnip'},
            }
        }
    }
})

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
