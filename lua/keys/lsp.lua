-- Quickfix list
vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix item" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next quickfix item" })

-- Diagnostics
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to prev diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, { desc = "Open diagnostic quickfix list" })
