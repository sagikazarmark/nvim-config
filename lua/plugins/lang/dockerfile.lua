return {
  -- https://github.com/AstroNvim/astrocommunity/blob/53b36f9666a0b2e96448b6e990d12eb9c8a7297e/lua/astrocommunity/pack/docker/init.lua
  -- https://github.com/LazyVim/LazyVim/blob/9264c54ae96d1d56f029ad9b561326c7b991c53b/lua/lazyvim/plugins/extras/lang/docker.lua

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        ---@diagnostic disable-next-line: missing-parameter
        vim.list_extend(opts.ensure_installed, { "dockerfile" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- docker_compose_language_service = {
        --   mason = false,
        -- },
        dockerls = {
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
          nls.builtins.diagnostics.hadolint,
        })
      end
    end,
  },
}
