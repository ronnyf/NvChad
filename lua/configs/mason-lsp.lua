local options = {
  ensure_installed = {
    "css-lsp",
    "html-lsp",
    "json-lsp",
    "lua_language_server",
    "py_lsp",
    "python-lsp-server",
    "typescript-language-server",
    "clangd",
  },
}

local mlsp = require "mason-lspconfig"
mlsp.setup(options)
