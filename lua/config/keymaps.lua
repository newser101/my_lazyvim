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

-- just for snippet testing
-- keymap("n", "ss", "<cmd>source /home/cawl/.config/nvim/lua/plugins/edit.lua<CR>", new_opts("just testing"))

-- save file
--  delete global keymaps for save file
-- keymap({ "i", "x", "n", "s" }, "<C-s>", "<nop>", {}) -- delete orig save keymap
-- keymap("n", "<leader>w", "<CMD>w<CR><ESC>", new_opts("new Save file")) -- save file
-- -- close buffer
-- keymap("n", "<leader>q", "<CMD> wq<CR>", new_opts("quit")) -- quit file

--- disable keymaps:
--disable recording
keymap("n", "q", "<Nop>", opts)
--disable Terminal
keymap("n", "<C-;>", "<Nop>", opts)

-- run files
keymap("n", "<leader>rp", "<cmd>TermExec cmd='python3 %'<CR>", { desc = "run python file" })
keymap("n", "<leader>rb", "<cmd>TermExec cmd='bash %'<CR>", { desc = "run shell file" })
keymap("n", "<leader>rj", "<cmd>TermExec cmd='java %'<CR>", { desc = "run java file" })
keymap("n", "<leader>rl", "<cmd>TermExec cmd='lua %'<CR>", { desc = "run lua file" })

-- jump to end of line in insert mode
keymap("i", "<C-j>", "<End> --> ", { desc = "comment eol in i-mode" })
keymap("i", "<C-l>", "<C-o><S-a>", { desc = { "jump to eol in i-mode" } })
-- keymap("i", "<C-l>", "<C-o>$", {desc={"jump to eol in i-mode"}})

-- web-tools
keymap("n", "<leader>ubp", "<cmd>BrowserPreview {-f -p 3000}<CR>", new_opts("Browser Sync Preview"))
keymap("n", "<leader>ubs", "<cmd>BrowserStop<CR>", new_opts("Browser Sync Stop"))
