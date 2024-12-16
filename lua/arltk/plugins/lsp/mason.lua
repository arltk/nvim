return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"emmet_ls",
				"lua_ls",
				"prismals",
				"pyright",
				"bashls",
				"dockerls",
				"jsonls",
				"nginx-language-server",
				"powershell_es",
				"yamlls",
				"ansiblels",
				"terraformls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- formatters
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"xmlformatter", -- xml formatter
				"yamlfmt", -- yaml formatter
				-- linters
				"pylint", -- python linter
				"eslint_d", -- js linter
			},
		})
	end,
}
