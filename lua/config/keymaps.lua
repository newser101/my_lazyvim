-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- function to add desc to opts
local function new_opts(text)
  -- local newtable = { noremap = true, silent = true }
  local newtable = opts
  newtable.desc = text
  return newtable
end

-- Press XX fast to exit insert moder
keymap("i", "jk", "<ESC>", opts)

-- replace keymaps

-- save file
--  delete global keymaps for save file
-- keymap({ "i", "x", "n", "s" }, "<C-s>", "<nop>", {}) -- delete orig save keymap
-- keymap("n", "<leader>w", "<CMD>w<CR><ESC>", new_opts("new Save file")) -- save file
-- -- close buffer
-- keymap("n", "<leader>q", "<CMD> wq<CR>", new_opts("quit")) -- quit file
