return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require "configs.mason"
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    config = function()
      require "configs.mason-lsp"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
}
