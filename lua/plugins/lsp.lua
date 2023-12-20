return {
  -- add to nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- make sure mason installs the server
      servers = {
        jdtls = {},
      },
      setup = {
        jdtls = function()
          return true -- avoid duplicate servers
        end,
      },
    },
  },
  -- add to nvim-lspconfig END

  -- add treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "java" })
    end,
  },
  -- add treesitter END

  -- add Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "java-test", "java-debug-adapter" })
    end,
  },

  -- add Mason END

  -- add none-ls
  -- {
  --   "nvimtools/none-ls.nvim",
  --   opts = function(_, opts)
  --     local nls = require("null-ls")
  --     opts.sources = opts.sources or {}
  --     table.insert(opts.sources, nls.builtins..black)
  --     table.insert(opts.sources, nls.builtins.formatting.prettier)
  --   end,
  -- },
  -- add none-ls END

  -- add more treesitter parsers
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "bash",
  --       "html",
  --       "javascript",
  --       "json",
  --       "lua",
  --       "markdown",
  --       "markdown_inline",
  --       "python",
  --       -- "query",
  --       "regex",
  --       -- "tsx",
  --       -- "typescript",
  --       "vim",
  --       -- "yaml",
  --     },
  --   },
  -- },
  -- add more treesitter parsers END

  -- add formatter to Conform
  {
    "stevearc/conform.nvim",
    opts = {
      --       ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        --         lua = { "stylua" },
        --         sh = { "shfmt" },
        markdown = { "mdformat" },
        --         python = { "black" },
        --         -- fish = { "fish_indent" },
      },
    },
  },
  -- add formatter to Conform END

  -- add Linter
  -- {
  --   "mfussenegger/nvim-lint",
  --   opts = {
  --     events = { "BufWritePost", "BufReadPost", "InsertLeave" },
  --     linters_by_ft = {
  --       --       -- fish = { "fish" },
  --       --       markdown = { "markdownlint" },
  --       python = { "flake8" },
  --       --       python = { "ruff" },
  --       --       -- Use the "*" filetype to run linters on all filetypes.
  --       --       -- ['*'] = { 'global linter' },
  --       --       -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
  --       --       -- ['_'] = { 'fallback linter' },
  --     },
  --   },
  -- },
  -- add Linter END

  -- add lsp to Mason
  -- {
  --
  --   "williamboman/mason.nvim",
  --   opts = {
  --     ensure_installed = {
  --       -- formatters:
  --       "stylua",
  --       "shfmt",
  --       "mdformat",
  --       "black",
  --
  --       -- linter:
  --       "markdownlint",
  --       "flake8",
  --       "ruff",
  --
  --       -- lsp:
  --       "pyright",
  --       "marksman",
  --       "lua-language-server",
  --       "json-lsp",
  --     },
  --   },
  -- },
  -- add lsp to Mason END
}
