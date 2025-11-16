return {
	"Civitasv/cmake-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"mfussenegger/nvim-dap",
	},
	config = function()
		require("cmake-tools").setup({
			cmake_build_directory = "build",
			cmake_dap_configurations = {
				name = "Launch C++ (gdb)",
				type = "gdb",
				request = "launch",
				stopOnEntry = false,
				runInTerminal = true,
				console = "integratedTerminal",
				MIMode = "gdb",
				setupCommands = {
					{
						description = "Enable pretty-printing for gdb",
						text = "-enable-pretty-printing",
						ignoreFailures = false,
					},
				},
			},

			cmake_notifications = {
				runner = { enable = true },
				executor = { enable = true },
				spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
				refresh_rate_ms = 100,
			},
		})
	end,
}
