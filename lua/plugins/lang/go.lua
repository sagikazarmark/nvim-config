return {
  { import = "lazyvim.plugins.extras.lang.go" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          mason = false,

          settings = {
            gopls = {
              buildFlags = { "-tags=mage,wireinject" },
            },
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        -- go = { "golangcilint", "revive" },
        go = { "golangcilint" },
      },
    },
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   opts = {
  --     filetypes = {
  --       go = true,
  --     },
  --   },
  -- },
}
