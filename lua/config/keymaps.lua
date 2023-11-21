-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
-- local map = Util.safe_keymap_set

-- my keymaps
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- function to add desc to opts
local function new_opts(text)
  local newtable = { noremap = true, silent = true }
  newtable.desc = text
  return newtable
end

-- Press XX fast to exit insert moder
keymap("i", "jk", "<ESC>", opts)

-- replace keymaps
-- formatting
keymap({ "n", "v" }, "<leader>lf", function()
  Util.format({ force = true })
end, { remap = true, desc = "Format" })
