-- Cursor shapes/colors
vim.opt.guicursor = {
  "n-v-c:block", -- block in normal/visual/command
  "i:hor20-Cursor", -- horizontal bar in insert
}
-- Highlight group for the cursor
vim.cmd([[highlight Cursor guifg=NONE guibg=LightSkyBlue]])
