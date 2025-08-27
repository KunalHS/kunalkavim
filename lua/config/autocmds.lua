-- Autosave on InsertLeave and TextChanged
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  command = "silent! write",
})
