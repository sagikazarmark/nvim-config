return {
  { import = "lazyvim.plugins.extras.lang.go" },
  -- https://github.com/AstroNvim/astrocommunity/blob/53b36f9666a0b2e96448b6e990d12eb9c8a7297e/lua/astrocommunity/pack/go/init.lua

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          mason = false,
        },
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      if type(opts.sources) == "table" then
        vim.list_extend(opts.sources, {
          nls.builtins.code_actions.gomodifytags,
          nls.builtins.code_actions.impl,
          nls.builtins.diagnostics.golangci_lint,
          -- nls.builtins.diagnostics.gospel, -- TODO: install binary
          -- nls.builtins.diagnostics.revive, -- too noisy
          nls.builtins.diagnostics.staticcheck,
          nls.builtins.formatting.gofumpt,
          nls.builtins.formatting.goimports,
        })
      end
    end,
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
}
