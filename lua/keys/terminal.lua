vim.api.nvim_set_keymap("n", "\\t", ":split term://zsh<CR>", { desc = "Open terminal" })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {})
