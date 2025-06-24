return {
	"Exafunction/windsurf.vim",
	event = "BufEnter",
	keys = {
		{ "<leader>ct", ":CodeiumToggle <CR>", mode = { "n", "i" }, desc = "Toggle Codeium AI" },
	},
	config = function()
		vim.g.codeium_enabled = false

		vim.keymap.set("i", "<C-Space>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })

		vim.keymap.set("i", "<m-e>", function()
			return vim.fn["codeium#Clear"]()
		end, { expr = true, silent = true })

		vim.keymap.set("i", "<m-n>", function()
			return vim.fn["codeium#CycleCompletions"](1)
		end, { expr = true, silent = true })

		vim.keymap.set("i", "<m-p>", function()
			return vim.fn["codeium#CycleCompletions"](-1)
		end, { expr = true, silent = true })
	end,
}
