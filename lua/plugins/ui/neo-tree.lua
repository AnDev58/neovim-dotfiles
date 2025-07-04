return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  keys = {
    { "\\ft", "<cmd>Neotree toggle filesystem<cr>", desc = "Toggle filesystem tree" },
    { "\\gt", "<cmd>Neotree toggle git_status<cr>", desc = "Toggle Git status" }
  },

  opts = {
    window = {
      mappings = {
        ["P"] = {
          "toggle_preview",
          config = {
            use_float = false,
            use_image_nvim = true,
          -- title = 'Neo-tree Preview',
          },
        },
      }
    }
  },
}
