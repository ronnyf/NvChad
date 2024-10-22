local configs = require "nvchad.configs.lspconfig"
configs.defaults()

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "ts_ls", "pylsp" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = configs.on_attach,
    on_init = configs.on_init,
    capabilities = configs.capabilities,
  }
end
