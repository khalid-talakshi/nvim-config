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
				auto_install = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lsp_config = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lsp_config.lua_ls.setup({
				capabilities = capabilities,
			})
			lsp_config.ts_ls.setup({
				capabilities = capabilities,
			})
			lsp_config.ruff.setup({
				capabilities = capabilities,
			})
			lsp_config.eslint.setup({
				capabilities = capabilities,
			})
			lsp_config.jinja_lsp.setup({
				capabilities = capabilities,
				filetypes = { "jinja" },
			})
			lsp_config.pyright.setup({
				capabilities = capabilities,
			})
			lsp_config.html.setup({
				capabilities = capabilities,
				filetypes = { "html", "jinja" },
			})
			lsp_config.tailwindcss.setup({
				capabilities = capabilities,
				filetypes = { "typescriptreact" },
			})
			lsp_config.sqlls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover({ border = "rounded" })
			end, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gc", vim.lsp.buf.declaration, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

			vim.diagnostic.config({
				float = {
					border = "rounded",
				},
			})
		end,
	},
}
