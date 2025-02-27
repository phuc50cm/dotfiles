return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "jinja_lsp", "html", "ts_ls", "pyright", "cssls", "gopls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				settings = {
					["lua_ls"] = {},
				},
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				settings = {
					["clangd"] = {},
				},
				capabilities = capabilities,
			})
			lspconfig.jinja_lsp.setup({
				settings = {
					["jinja_lsp"] = {},
				},
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				settings = {
					["html"] = {},
				},
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				settings = {
					["ts_ls"] = {},
				},
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				settings = {
					["pyright"] = {},
				},
				capabilities = capabilities,
			})
            lspconfig.cssls.setup({
                settings = {
                    ["cssls"] = {},
                },
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                settings = {
                    ["gopls"] = {},
                },
                capabilities = capabilities
            })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
