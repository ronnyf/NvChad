return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "jvgrootveld/telescope-zoxide",
      "nvim-telescope/telescope-ui-select.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      },
    },
    opts = function(_, conf)
      conf.defaults.mappings.i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<Esc>"] = require("telescope.actions").close,
      }

      conf.extensions_list = { "themes", "terms", "fzf", "zoxide", "ui-select" }
      conf.extensions = require "configs.telescope-extensions"

      -- or
      -- table.insert(conf.defaults.mappings.i, your table)

      return conf
    end,
  },
  -- {
  --   "aznhe21/actions-preview.nvim",
  --   config = function()
  --     require "configs.actions-preview"
  --   end,
  -- },
  -- {
  --   "stevearc/dressing.nvim",
  --   opts = {},
  -- },
}
