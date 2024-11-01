return {
  { import = "lazyvim.plugins.extras.lang.nix" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nil_ls = {
          mason = false,
        },
      },
    },
  },
}
