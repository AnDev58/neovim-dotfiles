-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move to window using the <C-hjkl> keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window" })
