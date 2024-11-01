return {
  { import = "lazyvim.plugins.extras.lang.toml" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "toml" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        taplo = {
          mason = false,
        },
      },
    },
  },
}
