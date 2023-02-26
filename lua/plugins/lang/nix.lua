return {
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
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        ---@diagnostic disable-next-line: missing-parameter
        vim.list_extend(opts.ensure_installed, { "nix" })
      end
    end,
  },
}
