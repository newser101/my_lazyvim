-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- show CR symbol at end of the line
vim.opt.list = true
vim.opt.listchars:append("eol:↴")

-- add german to spellcheck
opt.spelllang = { "en", "de" }
