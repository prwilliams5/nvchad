local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "tsserver",
  "eslint",
  "pyright",
  "prismals",
  "emmet_ls",
  "docker_compose_language_service",
  "dockerls",
  "tailwindcss",
  "clangd",
  "rust_analyzer",
  "gopls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
