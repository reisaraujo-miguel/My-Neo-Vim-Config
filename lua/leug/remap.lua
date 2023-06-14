vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<leader>pv", ":Ex<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>f", ":BufferLineCycleNext<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>b", ":BufferLineCyclePrev<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>mf", ":BufferLineMoveNext<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>mb", ":BufferLineMovePrev<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>lf", ":LspZeroFormat<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>yy", "\"+yy", {silent = true, noremap = true})
vim.api.nvim_set_keymap("v", "<leader>y", "\"+y", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>p", "\"+p", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>P", "\"+P", {silent = true, noremap = true})
