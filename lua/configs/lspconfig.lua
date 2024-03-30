local configs = require "nvchad.configs.lspconfig"
configs.defaults()

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "cmake", "ts_ls", "pylsp" }

local custom_on_attach = function(client, bufnr)
  configs.on_attach(client, bufnr)
  local map = vim.keymap.set
  map("n", "gT", "<cmd> Telescope<cr>", { buffer = bufnr })
  map("n", "gr", "<cmd>Telescope lsp_reference<cr>", { desc = "Lsp Reference" })
  map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { desc = "Lsp Definitions" })
  map("n", "gi", "<cmd>Telescope lsp_implementations<cr>", { desc = "Lsp Implementations" })
  map("n", "gx", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Lsp Diagnostics" })
  map("n", "gX", "<cmd>Telescope diagnostics<cr>", { desc = "Lsp Diagnostics" })
  map("n", "<leader>cr", function()
    require "nvchad.lsp.renamer"()
  end, { desc = "Lsp Rename" })
end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = custom_on_attach,
    on_init = configs.on_init,
    capabilities = configs.capabilities,
  }
end

lspconfig.clangd.setup {
  virtual_text = false,
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--query-driver=**",
  },
  filetypes = { "h", "hpp", "c", "cpp", "cuh", "cu", "objc", "objcpp", "proto" },
  handlers = configs.handlers,
  capabilities = configs.capabilities,
  on_attach = custom_on_attach,
}
