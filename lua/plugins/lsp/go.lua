return {
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"nvim-treesitter/nvim-treesitter",
	},

	opts = {
		gofmt = "gofumpt",
		lsp_gofumpt = true,
		diagnostic = vim.diagnostic.config(),
		trouble = true,
		luasnip = true,
	},

	config = function(_, opts)
		table.insert(opts, "lsp_cfg", { capabilities = require("cmp_nvim_lsp").default_capabilities() })
		require("go").setup(opts)
		local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.go",
			callback = function()
				require("go.format").goimports()
			end,
			group = format_sync_grp,
		})
	end,
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
