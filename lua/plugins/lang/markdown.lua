return {
  { import = "lazyvim.plugins.extras.lang.markdown" },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ["markdownlint-cli2"] = {
          args = { "--config", vim.fn.expand("~/.config/nvim/config/.markdownlint-cli2.yaml"), "$FILENAME" },
        },
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", vim.fn.expand("~/.config/nvim/config/.markdownlint-cli2.yaml"), "$FILENAME" },
        },
      },
    },
  },
}
