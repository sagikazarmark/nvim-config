return {
  { import = "lazyvim.plugins.extras.lang.yaml" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          mason = false,
          settings = {
            redhat = { telemetry = { enabled = false } },
            yaml = {
              format = {
                enable = true,
                bracketSpacing = false,
              },
            },
          },
        },
      },
    },
  },
}
