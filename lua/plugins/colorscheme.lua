return {
  {
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
      background = {
        light = "latte",
        dark = "macchiato",
      },
      integrations = {
        neotree = true,
        cmp = true,
        notify = true,
        noice = true,
        mason = true,
        which_key = true,
        telescope = true,
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
  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    opts = {
      set_dark_mode = function()
        vim.api.nvim_set_option("background", "dark")
        -- vim.cmd("Catppuccin macchiato")
      end,
      set_light_mode = function()
        vim.api.nvim_set_option("background", "light")
        -- vim.cmd("Catppuccin latte")
      end,
    },
    init = function()
      require("auto-dark-mode").init()
    end,
  },
}
