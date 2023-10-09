return {
  -- https://github.com/AstroNvim/astrocommunity/blob/53b36f9666a0b2e96448b6e990d12eb9c8a7297e/lua/astrocommunity/pack/nix/init.lua

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        ---@diagnostic disable-next-line: missing-parameter
        vim.list_extend(opts.ensure_installed, { "nix" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rnix = {
          mason = false,
        },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      if type(opts.sources) == "table" then
        vim.list_extend(opts.sources, {
          nls.builtins.code_actions.statix,
          nls.builtins.diagnostics.deadnix,
          -- nls.builtins.formatting.alejandra, -- Too strict for my taste
          -- nls.builtins.formatting.nixfmt, -- TODO: figure out how to configure for certain projects
          nls.builtins.formatting.nixpkgs_fmt,
        })
      end
    end,
  },
}
