return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "vento" })
      else
        opts.ensure_installed = { "vento" }
      end
    end,
  },
}
