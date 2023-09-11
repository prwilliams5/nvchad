local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities


local plugins = {
  {
    'neovim/nvim-lspconfig',

    dependencies = {
      'jose-elias-alvarez/null-ls.nvim',
      after = 'nvim-lspconfig',
      config = function()
        require 'custom.configs.null-ls'
      end
    },

    config = function()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = {
        "html",
        "css",
        "lua",
        "vim",
        "typescript",
        "javascript",
        "markdown",
        "markdown_inline",
        "python",
        "go",
        "rust",
        "c"
      },
      indent = {
        enable = true
      }
    }
  },

  {
    'williamboman/mason.nvim',
      ensure_installed = {
      -- markdown
      "marksman",
      "misspell",

      -- lua
      "lua-language-server",
      "stylua",

      -- web dev
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "deno",

      -- docker
      "dockerfile-language-server",
      "docker-compose-language-service",

      -- rust
      "rust-analyzer",
      "rustfmt",

      -- go
      "gopls",
      "glint",
      "go-debug-adapter",
      "goimports",
      "goimports-reviser",
      "golangci-lint",
      "golangci-lint-langserver",
      "golines",
      "gotests",
      "gotestsum",

      -- python
      "pyright",
      "flake8",
      "black",
      "mypy",
      "pydocstyle",
      "pylint",
      "pyre",
      "autoflake",
      "autopep8",
      "python-lsp-server",

      -- yaml
      "terraform-ls",
      "tflint",
      "yaml-language-server",
      "yamlfmt",
      "yamllint",

      -- sql
      "sqlfluff",
      "sqls",
  },

  {
    'iamcco/markdown-preview.nvim',
        on_attach = on_attach,
        capabilities = capabilities
  },

  {
    'github/copilot.vim',
        on_attach = on_attach,
        capabilities = capabilities
  },
}


}

return plugins
