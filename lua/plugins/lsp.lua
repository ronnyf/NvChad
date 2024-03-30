return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {
        ensure_installed = {
          "black",
          "debugpy",
          "isort",
          "nvim-dap",
          "prettier",
          "pyright",
          "stylua",
        },
      }
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "css-lsp",
          "html-lsp",
          "json-lsp",
          "lua_language_server",
          "py_lsp",
          "python-lsp-server",
          -- "ts_lsp",
          "typescript-language-server",
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
}
