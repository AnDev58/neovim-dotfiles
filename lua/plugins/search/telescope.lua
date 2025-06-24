return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      enabled = true
    },
  },

  branch = "0.1.x",
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', 'ff', builtin.find_files, { desc = "Search files" })
    vim.keymap.set('n', 'fb', builtin.buffers, { desc = "Search buffers" })
    vim.keymap.set('n', 'fh', builtin.help_tags, { desc = "Read documentation" })
    vim.keymap.set('n', 'gb', builtin.git_branches, { desc = "Switch Git branch" })
    vim.keymap.set('n', 'gc', builtin.git_commits, { desc = "Show Git commits" })
    vim.keymap.set('n', 'ls', builtin.lsp_document_symbols, { desc = "Search symbols (LSP)" })
    vim.keymap.set('n', 'fx', builtin.treesitter, { desc = "Search symbols (Treesitter)"})
    vim.keymap.set('n', 'fs', builtin.spell_suggest, { desc = "Suggest spelling" })
  end,
  event = "VeryLazy"
}
