require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- tmux-navigation
local nvim_tmux_nav = require('nvim-tmux-navigation')
map('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
map('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
map('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
map('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
map('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
map('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gd", vim.lsp.buf.definition, {})
map("n", "leader<ca>", vim.lsp.buf.code_action, {})
