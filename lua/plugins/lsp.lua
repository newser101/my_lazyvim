return {
  -- add for java
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          vim.list_extend(opts.ensure_installed, { "java-test", "java-debug-adapter" })
        end,
      },
      {
        "mfussenegger/nvim-dap-python",
        keys = {
          {
            "<leader>dPt",
            function()
              require("dap-python").test_method()
            end,
            desc = "Debug Method",
            ft = "python",
          },
          {
            "<leader>dPc",
            function()
              require("dap-python").test_class()
            end,
            desc = "Debug Class",
            ft = "python",
          },
        },
        config = function()
          local path = require("mason-registry").get_package("debugpy"):get_install_path()
          require("dap-python").setup(path .. "/venv/bin/python")
        end,
      },
    },
  },
  -- add for java END

  -- add formatter to Conform
  {
    "stevearc/conform.nvim",
    opts = {
      --       ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        --         lua = { "stylua" },
        sh = { "shfmt" },
        markdown = { "mdformat" },
        fish = { "fish_indent" },
      },
    },
  },
  -- add formatter to Conform END

  -- add Linter
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        fish = { "fish" },
        markdown = { "markdownlint" },
        -- python = { "flake8" },
        --       python = { "ruff" },
        --       -- Use the "*" filetype to run linters on all filetypes.
        --       -- ['*'] = { 'global linter' },
        --       -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
        --       -- ['_'] = { 'fallback linter' },
      },
    },
  },
  -- add Linter END

  -- add  to lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- bashls will be automatically installed with mason and loaded with lspconfig
        bashls = {},
      },
    },
  },
  -- add  to lspconfig END

  -- add more treesitter parsers
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "bash",
  --       "html",
  --       -- "javascript",
  --       -- "json",
  --       -- "lua",
  --       -- "markdown",
  --       -- "markdown_inline",
  --       -- "python",
  --       -- "query",
  --       -- "regex",
  --       -- "tsx",
  --       -- "typescript",
  --       -- "vim",
  --       -- "yaml",
  --     },
  --   },
  -- },

  -- extend the default config
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "html",
      })
    end,
  },
  -- add more treesitter parsers END
}
