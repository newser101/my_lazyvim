return {
  -- disable trouble
  -- { "folke/trouble.nvim", enabled = false },
  -- {
  --   "neovim/nvim-lspconfig",
  --   keys = {
  --     { "<leader>cf", false },
  --   },
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   init = function()
  --     local keys = require("lazyvim.plugins.lsp.keymaps").get()
  --     keys[#keys + 1] = { "<leader>cf", false }
  --   end,
  -- },
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<leader>cf", false }
    end,
  },
}
