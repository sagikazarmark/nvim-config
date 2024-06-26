return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  "AstroNvim/AstroNvim",
  {
    "AstroNvim/astrocore",
    lazy = false, -- disable lazy loading
    priority = 10000, -- load AstroCore first
    opts = {
      -- set configuration options  as described below
    },
  },
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  -- { import = "astrocommunity.bars-and-lines.scope-nvim" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- { import = "astrocommunity.color.twilight-nvim" },
  -- { import = "astrocommunity.color.ccc-nvim" },
  -- { import = "astrocommunity.color.modes-nvim" },
  -- { import = "astrocommunity.color.tint-nvim" },
  -- { import = "astrocommunity.color.headlines-nvim" },
  -- { import = "astrocommunity.editing-support.zen-mode-nvim" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.go" },
}
