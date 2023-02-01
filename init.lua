-- example file i.e lua/custom/init.lua
local M = {}

-- load your globals, autocmds here or anything .__.
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_refresh_rate = 144
vim.g.neovide_remember_window_size = true
vim.cmd([[set guifont=Consolas \NF\ r:16]])
vim.cmd([[set clipboard+=unnamedplus]])

return M
