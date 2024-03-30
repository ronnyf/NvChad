local options = {
  formatters_by_ft = {
    css = { "prettier" },
    graphql = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "prettier" },
    lua = { "stylua" },
    markdown = { "prettier" },
    python = { "isort", "black" },
    svelte = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    yaml = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    async = false,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
