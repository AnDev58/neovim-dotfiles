local on_attach = function(client, bufnr)
	print(client.name .. " attached to buffer " .. bufnr)
end

local function table_keys(t)
	local keys = {}
	for k in pairs(t) do
		table.insert(keys, k)
	end
	return keys
end

return {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},

	opts = {
		servers = {
			clangd = {
				settings = {
					CompileFlags = "-std=c++20",
				},
			},
			pyright = {
				settings = {
					pyright = {
						analysis = {
							diagnosticMode = "workspace",
						},
					},
				},
			},
			rust_analyzer = {
				settings = {
					["rust-analyzer"] = {
						imports = {
							granularity = {
								group = "module",
							},
							prefix = "self",
						},
						cargo = {
							buildScripts = {
								enable = true,
							},
						},
						procMacro = {
							enable = true,
						},
					},
				},
			},
			ts_ls = {
				settings = {},
			},
			cmake = {
				settings = {},
			},
			lua_ls = {
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							-- Get the language server to recognize the `vim` global
							globals = {
								"vim",
								"require",
							},
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						},
						telemetry = { enable = false },
					},
				},
			},
		},
	},

	config = function(_, opts)
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_enable = false,
			ensure_installed = table_keys(opts.servers),
		})

		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		for name, conf in pairs(opts.servers) do
			lspconfig[name].setup({
				on_attach = function(client, bufnr)
					local _, err = pcall(on_attach, client, bufnr)
					if err then
						vim.notify("[on_attach] error: " .. err, vim.log.levels.ERROR)
					else
						vim.notify(
							"[on_attach] " .. client.name .. " attached to buffer " .. bufnr,
							vim.log.levels.INFO
						)
					end
				end,
				capabilities = capabilities,
				settings = conf.settings,
			})
		end
	end,
}
