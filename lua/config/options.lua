-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- show CR symbol at end of the line
opt.list = true
opt.listchars:append("eol:↴")

-- add german to spellcheck
opt.spelllang = { "en", "de" }

-- set python version:
-- let g:python3_host_prog="/usr/bin/python3"
-- vim.g.python3 = "/usr/bin/python3"
-- vim.g.python3_host_prog = "/bin/python3.12"
vim.g.python3_host_prog = "/bin/python"
