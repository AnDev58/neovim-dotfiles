return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			enabled = true,
		},
	},
	branch = "0.1.x",
	lazy = true,

	keys = {
		{ "ff", require("telescope.builtin").find_files, desc = "Search files" },
		{ "fb", require("telescope.builtin").buffers, desc = "Search buffers" },
		{ "fh", require("telescope.builtin").help_tags, desc = "Read documentation" },
		{ "gb", require("telescope.builtin").git_branches, desc = "Switch Git branch" },
		{ "gc", require("telescope.builtin").git_bcommits, desc = "Show Git commits" },
		{ "fs", require("telescope.builtin").treesitter, desc = "Search symbols (Treesitter)" },
	},
}
