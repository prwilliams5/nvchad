local null_ls = require 'null-ls'

local actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completions
local lint = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

local sources = {

  actions.eslint_d,
  actions.ltrs,
  actions.shellcheck,
  actions.shellcheck,

  completion.luasnip,

  lint.shellcheck,
  lint.dotenv_linter,
  lint.eslint_d,
  lint.fish,
  lint.golangci_lint,
  lint.ltrs,
  lint.luacheck,
  lint.markdownlint,
  lint.pylint,
  lint.tsc,

  formatting.black,
  formatting.eslint_d,
  formatting.fish_indent,
  formatting.fixjson,
  formatting.gofmt,
  formatting.goimports,
  formatting.prettierd,
  formatting.prismafmt,
  formatting.pyink,
  formatting.rustywind,
  formatting.stylua,
  formatting.

}

null_ls.setup {
  debug = true,
  sources = sources
}

-- add autocmds to run formatting on save for .go, .rs, and .py files
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                    vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
})
