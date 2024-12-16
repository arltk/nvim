return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

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
  end,
}
