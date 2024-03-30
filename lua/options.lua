require "nvchad.options"

-- add yours here!
local o = vim.o
o.relativenumber = true
o.cursorline = true
o.wrap = false

local opt = vim.opt
opt.tabstop = 4
opt.shiftwidth = 2
opt.smartindent = true
opt.expandtab = true
opt.scrolloff = 8
opt.colorcolumn = "100"

-- local lsp = vim.lsp
-- lsp.set_log_level "trace"
--opt.swapfile = false
--opt.mouse = nil

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
