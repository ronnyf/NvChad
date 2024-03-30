local options = {
  formatters_by_ft = {
    css = { "prettier" },
    graphql = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "jq" },
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
    timeout_ms = 1500,
    async = false,
    lsp_fallback = true,
  },
}

local conform = require "conform"

conform.setup(options)
conform.formatters.prettier = {
  prepend_args = { "--prose-wrap", "always" },
}
