return {
  { "AstroNvim/astrocommunity", import = "astrocommunity.colorscheme.catppuccin" },

  {
    "catppuccin",
    -- lazy = true,
    -- priority = 1000,
    opts = {
      flavour = "macchiato",
      background = {
        light = "latte",
        dark = "macchiato",
      },
      integrations = {
        cmp = true,
        noice = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
      },
    },
  },
}
