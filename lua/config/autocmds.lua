-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- https://github.com/LazyVim/LazyVim/discussions/269#discussioncomment-4981602
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown", "quarto" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

vim.api.nvim_create_user_command("FormatDisable", function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.autoformat = false
  else
    vim.b.autoformat = false
  end
end, {
  desc = "Disable autoformat-on-save",
  bang = true,
})

vim.api.nvim_create_user_command("FormatEnable", function()
  vim.b.autoformat = true
  vim.b.autoformat = true
end, {
  desc = "Re-enable autoformat-on-save",
})
