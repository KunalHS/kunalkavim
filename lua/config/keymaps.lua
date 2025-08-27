local map = vim.keymap.set

-- Ctrl+S => save ALL
map({ "n", "x", "s", "i" }, "<C-s>", "<Cmd>wa<CR><Esc>", { desc = "Save All Files" })

-- jj / jk => Esc (insert mode)
map("i", "jj", "<Esc>", { desc = "Esc" })
map("i", "jk", "<Esc>", { desc = "Esc" })

-- <leader>o => keep only current window
map("n", "<leader>o", "<Cmd>only<CR>", { desc = "Close Other Windows" })

vim.keymap.set("n", "<leader>tt", "<Cmd>ToggleTerm direction=float<CR>", { desc = "Floating Terminal" })

-- <leader>fk => search keymaps
map("n", "<leader>fk", function()
  if pcall(require, "snacks") and Snacks.picker and Snacks.picker.keymaps then
    Snacks.picker.keymaps()
  else
    require("telescope.builtin").keymaps()
  end
end, { desc = "Keymaps" })

-- <leader>fw => grep word under cursor
map("n", "<leader>fw", function()
  if pcall(require, "snacks") and Snacks.picker and Snacks.picker.grep then
    Snacks.picker.grep({ search = vim.fn.expand("<cword>") })
  else
    require("telescope.builtin").grep_string()
  end
end, { desc = "Grep Word" })
