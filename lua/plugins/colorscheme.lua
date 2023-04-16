return {
  { import = "plugins.colorscheme.catppuccin" },

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
