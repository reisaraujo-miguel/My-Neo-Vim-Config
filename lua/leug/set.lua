vim.opt.nu = true

vim.opt.tabstop = 4
--vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true
--vim.opt.autoindent = true

vim.opt.hlsearch = false

vim.opt.updatetime = 50

vim.opt.cursorline = true

vim.opt.colorcolumn = "80"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.opt.autochdir = true

if vim.g.neovide then
	vim.g.neovide_padding_top = 0
	vim.g.neovide_padding_bottom = 0
	vim.g.neovide_padding_right = 0
	vim.g.neovide_padding_left = 0

	vim.g.neovide_scroll_animation_length = 0.1

	vim.g.neovide_position_animation_length = 0.02

	vim.g.neovide_cursor_animation_length = 0.02

	vim.g.neovide_cursor_trail_size = 0.05

	vim.g.neovide_theme = 'auto'
end
