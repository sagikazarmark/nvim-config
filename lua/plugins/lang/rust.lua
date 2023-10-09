return {
  -- https://github.com/AstroNvim/astrocommunity/blob/53b36f9666a0b2e96448b6e990d12eb9c8a7297e/lua/astrocommunity/pack/rust/init.lua

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        ---@diagnostic disable-next-line: missing-parameter
        vim.list_extend(opts.ensure_installed, { "rust" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
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
          nls.builtins.diagnostics.ltrs,
        })
      end
    end,
  },
  -- https://github.com/LazyVim/LazyVim/pull/24/files#diff-d571339be951cb02c73a47ddad7e40b658b998b4f884cb211f235334e2a90e7b
  -- https://www.reddit.com/r/neovim/comments/11clka0/adding_rust_to_lazyvim/
  -- https://github.com/appelgriebsch/Nv/blob/main/lua/plugins/extras/lang/rust.lua
  -- {
  --   "simrat39/rust-tools.nvim",
  --   ft = { "rust" },
  --   opts = function()
  --     local adapter
  --     local success, package = pcall(function()
  --       return require("mason-registry").get_package("codelldb")
  --     end)
  --     if success then
  --       local package_path = package:get_install_path()
  --       local codelldb_path = package_path .. "/codelldb"
  --       local liblldb_path = package_path .. "/extension/lldb/lib/liblldb"
  --       local this_os = vim.loop.os_uname().sysname
  --
  --       -- The path in windows is different
  --       if this_os:find("Windows") then
  --         codelldb_path = package_path .. "\\extension\\adapter\\codelldb.exe"
  --         liblldb_path = package_path .. "\\extension\\lldb\\bin\\liblldb.dll"
  --       else
  --         -- The liblldb extension is .so for linux and .dylib for macOS
  --         liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
  --       end
  --       adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
  --     else
  --       adapter = require("rust-tools.dap").get_codelldb_adapter()
  --     end
  --
  --     return { server = require("astronvim.utils.lsp").config("rust_analyzer"), dap = { adapter = adapter } }
  --   end,
  --   dependencies = {
  --     {
  --       "jay-babu/mason-nvim-dap.nvim",
  --       opts = function(_, opts)
  --         if type(opts.ensure_installed) == "table" then
  --           ---@diagnostic disable-next-line: missing-parameter
  --           vim.list_extend(opts.ensure_installed, { "codelldb" })
  --         end
  --       end,
  --     },
  --   },
  -- },
}
