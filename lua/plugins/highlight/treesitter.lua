return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    require 'nvim-treesitter'.setup {
      ensure_installed = { "c", "lua", "python" },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true
      }
    }
  end
}
