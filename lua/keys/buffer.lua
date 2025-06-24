vim.api.nvim_set_keymap("n", ",h", "<cmd>bp<CR>", { desc = "Go to prev buffer" })
vim.api.nvim_set_keymap("n", ",l", "<cmd>bn<CR>", { desc = "Go to next buffer" })
vim.api.nvim_set_keymap("n", ",c", "<cmd>bd<CR>", { desc = "Delete buffer" })
