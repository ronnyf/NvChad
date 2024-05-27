local options = {
  diff = {
    algorithm = "patience",
    ignore_whitespace = true,
  },
  telescope = require("telescope.themes").get_dropdown { winblend = 10 },
}

require("actions-preview").setup(options)
