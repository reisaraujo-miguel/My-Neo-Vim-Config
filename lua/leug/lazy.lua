local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
	{ 'tpope/vim-fugitive' },

	{ 'norcalli/nvim-colorizer.lua' },

	{ 'rust-lang/rust.vim' },

	{ 'simrat39/rust-tools.nvim' },

	{ 'nvim-lua/popup.nvim' },

	{ 'nvim-telescope/telescope-media-files.nvim' },

	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',

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

	{ { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 } },

	{
		'akinsho/bufferline.nvim',
		version = '*',
		dependencies = { 'nvim-tree/nvim-web-devicons', },
		config = function()
			require('bufferline').setup {
				highlights = require('catppuccin.groups.integrations.bufferline').get(),
			}
		end,
	},

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', },
	},

	{ { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' }, },


	{
		'windwp/nvim-autopairs',
		event = 'InsertEnter',
		opts = {}, -- this is equalent to setup({}) function
	},

	{
		'windwp/nvim-ts-autotag',
		dependencies = { { 'nvim-treesitter' }, },
		opts = function(_, opts)
			opts.autotag = { enable = true, }
		end,
	},

	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },

	{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },

	{ 'mhartington/formatter.nvim' }
})
