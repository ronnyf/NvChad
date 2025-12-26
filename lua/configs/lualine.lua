local options = {
  options = {
    theme = "solarized_dark",
    section_separators = { "", "" },
    component_separators = { "", "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff" },
    lualine_c = { "filename", "filetype" },
    lualine_x = { "encoding", "fileformat", "location" },
    lualine_y = { "progress" },
    lualine_z = { "line" },
  },
}

local ll = require "lualine"
ll.setup(options)
