return {
	"stevearc/conform.nvim",

	opts = {
		formatters = {
			clang_format = {},
		},
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			rust = { "rustfmt" },
			javascript = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			cmake = { "cmake_format" },
			c = { ["clang-format"] = { append_args = { "--style=gnu" } } },
			cpp = { ["clang-format"] = { append_args = { "--style=Microsoft" } } },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
