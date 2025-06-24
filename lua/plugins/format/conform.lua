return {
	"stevearc/conform.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"LittleEndianRoot/mason-conform",
	},

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			javascript = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			cmake = { "cmake_format" },
			c = { "clang_format" },
			cpp = { "clang_format" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},

	config = function(_, opts)
		require("mason").setup()
		require("conform").setup(opts)
		require("mason-conform").setup({ automatic_installation = true })
	end,
}
