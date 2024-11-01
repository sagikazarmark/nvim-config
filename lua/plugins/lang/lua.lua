return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "lua", "luap" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false,
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        go = { "luacheck", "stylua" },
      },
    },
  },
}
