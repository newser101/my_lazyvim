-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- remove auto comment line after o from comment line
vim.api.nvim_create_autocmd("FileType", {
  command = "set formatoptions-=cro",
})
