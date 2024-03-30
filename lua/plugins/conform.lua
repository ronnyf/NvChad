return {
  "stevearc/conform.nvim",
  event = { "LspAttach", "BufReadPost", "BufNewFile" },
  config = function()
    require "configs.conform"
  end,
}
