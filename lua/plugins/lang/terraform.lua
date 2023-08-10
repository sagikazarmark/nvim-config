return {
  { import = "lazyvim.plugins.extras.lang.terraform" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        terraformls = {
          mason = false,
        },
      },
    },
  },
}
