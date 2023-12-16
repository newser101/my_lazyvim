return {

  -- add formatter to Conform
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        ---@type table<string, conform.FormatterUnit[]>
        formatters_by_ft = {
          lua = { "stylua" },
          sh = { "shfmt" },
          markdown = { "mdformat" },
          python = { "black" },
          -- fish = { "fish_indent" },
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
        -- python = { "flake8" },
        python = { "ruff" },
        -- Use the "*" filetype to run linters on all filetypes.
        -- ['*'] = { 'global linter' },
        -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
        -- ['_'] = { 'fallback linter' },
      },
    },
  },
  -- add Linter END

  -- add lsp to Mason
  {

    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- formatters:
        "stylua",
        "shfmt",
        "mdformat",
        "black",

        -- linter:
        "markdownlint",
        "flake8",
        "ruff",

        -- lsp:
        "pyright",
        "marksman",
        "lua-language-server",
        "json-lsp",
      },
    },
  },
  -- add lsp to Mason END
}
