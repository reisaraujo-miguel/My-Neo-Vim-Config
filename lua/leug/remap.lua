vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<leader>pv", ":Ex<CR>", {})

-- BufferLine
vim.api.nvim_set_keymap("n", "<leader>f", ":BufferLineCycleNext<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>b", ":BufferLineCyclePrev<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>mf", ":BufferLineMoveNext<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>mb", ":BufferLineMovePrev<CR>", { silent = true, noremap = true })

-- Lsp
vim.api.nvim_set_keymap("n", "<leader>lf", ":LspZeroFormat<CR>", { noremap = true })

-- Telescope
vim.api.nvim_set_keymap("n", "ff", ":Telescope find_files<CR>", { noremap = true })

-- Copying/Pasting
vim.api.nvim_set_keymap("n", "<leader>yy", "\"+yy", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<leader>y", "\"+y", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>p", "\"+p", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>P", "\"+P", { silent = true, noremap = true })

-- Windows
vim.api.nvim_set_keymap("n", "<leader>s", ":sp<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>vs", ":vsp<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>nf", "<C-w>w", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>nb", "<C-w>W", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wf", "<C-w>r", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wb", "<C-w>R", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ws", "<C-w>x", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>+", ":resize +4<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>-", ":resize -4<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>>", ":vertical resize +4<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader><", ":vertical resize -4<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>o", ":only<CR>", { silent = true, noremap = true })
