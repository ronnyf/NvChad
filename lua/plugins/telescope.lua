return {
  {
    "jvgrootveld/telescope-zoxide",
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").setup {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {},
        },
      }
      require("telescope").load_extension "ui-select"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "v0.2.0",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "jvgrootveld/telescope-zoxide",
      "nvim-telescope/telescope-fzf-native.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    opts = function(_, conf)
      local tconf = require "configs.telescope_conf"
      conf.defaults.mappings.i = tconf.mappings
      conf.extensions = tconf.extensions
      return conf
    end,
  },
}
