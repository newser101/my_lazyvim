local Util = require("lazyvim.util")
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- change keymaps for comment
  -- change lifegrep to <leader>fg
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- change a keymap
      { "<leader>/", false },
      --{ "<leader>fg", "<CMD>Telescope live_grep<CR>", desc = "Grep (root dir)" },
      { "<leader>fg", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    },
  },

  -- add keybinding to mini.comment
  {
    "echasnovski/mini.comment",
    opts = {
      options = {
        custom_commentstring = function()
          return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
        end,
      },
      mappings = {
        -- Toggle comment (like `gcip` - comment inner paragraph) for both
        -- Normal and Visual modes
        comment = "<space>/",

        -- Toggle comment on current line
        comment_line = "<space>/",

        -- Toggle comment on visual selection
        comment_visual = "<space>/",

        -- Define 'comment' textobject (like `dgc` - delete whole comment block)
        textobject = "<space>/",
      },
    },
  },
  -- change keymaps for comment

  -- add Super Tab
  -- first: disable default <tab> and <s-tab> behavior in LuaSnip
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  -- then: setup supertab in cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- "hrsh7th/cmp-emoji",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- this way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
  -- add Super Tab END

  -- add formatter to Conform
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        ---@type table<string, conform.FormatterUnit[]>
        formatters_by_ft = {
          lua = { "stylua" },
          -- fish = { "fish_indent" },
          sh = { "shfmt" },
          markdown = { "mdformat" },
          python = { "black" },
        },
      }
      return opts
    end,
  },
  -- add formatter to Conform END

  -- add Linter
  {
    "mfussenegger/nvim-lint",
    opts = {
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        -- fish = { "fish" },
        markdown = { "markdownlint" },
        python = { "flake8" },
        -- Use the "*" filetype to run linters on all filetypes.
        -- ['*'] = { 'global linter' },
        -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
        -- ['_'] = { 'fallback linter' },
      },
    },
  },
  -- add Linter END

  -- Lualine remove clock
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {},
      },
    },
  },
  -- Lualine remove clock END

  -- noice add boaeder to HoverDock window
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  -- noice add boaeder to HoverDock window END

  -- friendly-snippets add custom snippet
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      ---@diagnostic disable-next-line: assign-type-mismatch
      require("luasnip.loaders.from_lua").load({ paths = "/home/cawl/.config/nvim/lua/snippets" })
      -- require("luasnip.loaders.from_lua").lazy_load({ paths = "/home/cawl/.config/nvim/lua/snippets" })
    end,
  },
  -- friendly-snippets add custom snippet END

  -- bufferline
  {
    "akinsho/bufferline.nvim",

    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },
  -- bufferline END

  -- edit luasnips
  -- {
  --   "L3MON4D3/LuaSnip",
  --   opts = {
  --     -- enable_autosnippets=true,
  --   },
  -- },
  -- edit luasnips END

  -- add lsp to Mason
  {

    -- "williamboman/mason.nvim",
    --    opts={
    -- ensure_installed = {
    --      "stylua",
    --      "shfmt",
    --      -- "flake8",
    --        -- Installed
    --    pyright
    --    ruff
    --    marksman
    --    markdownlint
    --    lua-language-server lua_ls
    --    black
    --    flake8
    --    json-lsp jsonls
    --    mdformat
    --    shfmt
    --    stylua
    --
    --    },
    --    }
    --  },
  },
}
