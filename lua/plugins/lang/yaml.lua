return {
  { import = "lazyvim.plugins.extras.lang.yaml" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          mason = false,
          settings = {
            yaml = {
              format = {
                bracketSpacing = false,
              },
            },
          },
        },
      },
    },
  },
}
