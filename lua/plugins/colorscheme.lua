return {
  { import = "lazyvim.plugins.colorscheme" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    opts = {
      options = {
        theme = "catppuccin",
      },
    },
  },

  {
    "catppuccin",
    -- lazy = true,
    -- priority = 1000,
    opts = {
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      integrations = {
        cmp = true,
        noice = true,
      },
    },
  },

  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    opts = {
      set_dark_mode = function()
        vim.api.nvim_set_option_value("background", "dark", {})
        -- vim.cmd("Catppuccin macchiato")
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value("background", "light", {})
        -- vim.cmd("Catppuccin latte")
      end,
    },
    init = function()
      require("auto-dark-mode").init()
    end,
  },
}
