return {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	dependencies = {
		"neovim/nvim-lspconfig",
		{ "williamboman/mason.nvim", opts = {} },
	},

	opts = { automatic_enable = { exclude = "gopls" } },
}
