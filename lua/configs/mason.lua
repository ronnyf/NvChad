local options = {
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

local m = require "mason"
m.setup(options)
