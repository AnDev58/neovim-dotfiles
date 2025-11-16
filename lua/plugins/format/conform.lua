return {
	"stevearc/conform.nvim",

	opts = {
		formatters = {
			clang_format = {
				prepend_args = { "--style=Microsoft" },
			},
		},
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
}
