-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-fugitive'

    use 'norcalli/nvim-colorizer.lua'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use { "catppuccin/nvim", as = "catppuccin" }

    vim.cmd('colorscheme catppuccin')

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        "windwp/nvim-ts-autotag",
        wants = "nvim-treesitter",
        config = function()
            require("nvim-ts-autotag").setup { enable = true }
        end,
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'hrsh7th/cmp-nvim-lua'}, -- Required

        -- Snippets
        {'L3MON4D3/LuaSnip'},     -- Required
        {'rafamadriz/friendly-snippets'},
    }
}
end)
