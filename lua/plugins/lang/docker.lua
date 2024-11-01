return {
  { import = "lazyvim.plugins.extras.lang.docker" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        docker_compose_language_service = {
          mason = false,
        },
        dockerls = {
          mason = false,
        },
      },
    },
  },
}
