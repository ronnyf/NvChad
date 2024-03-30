require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tmux-navigation
local nvim_tmux_nav = require "nvim-tmux-navigation"
map("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
map("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
map("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
map("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
map("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
map("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- debugger
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle Breakpoint" })
map("n", "<leader>du", '<cmd>lua require"dapui".toggle()<CR>')
-- python runner
map("n", "<leader>dpr", '<cmd>lua require"dap-python".test_method()<CR>', { desc = "Run Python Test" })
