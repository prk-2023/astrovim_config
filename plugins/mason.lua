-- customize mason plugins
-- handles configuration for multiple plugins
-- manages external editor tooling such as LSP, Linters, formatters and debuggers.
return {
  -- use mason-lspconfig to configure LSP installations
  {
    -- LSP server : which provide language specific features
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = { "lua_ls", "clangd" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    -- null-ls is similar to LSP config designed for tools that dont have
    -- language server such as formaters and Linters.
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = { "prettier", "stylua" },
    },
  },
  {
    -- DAP : debug adapter protocol
    -- Enables language debuggers
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "python" },
    },
  },
}
