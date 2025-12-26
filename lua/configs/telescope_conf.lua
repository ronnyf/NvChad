return {
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      },
    },
    zoxide = {
      prompt_title = "[ Walking on the shoulders of Giants ]",
    },
  },
  mappings = {
    ["<C-j>"] = require("telescope.actions").move_selection_next,
    ["<C-k>"] = require("telescope.actions").move_selection_previous,
    ["<Esc>"] = require("telescope.actions").close,
  },
}
