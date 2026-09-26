vim.keymap.set("i", "<C-b>", "<Left>", { noremap = true })
vim.keymap.set("i", "<C-f>", "<Right>", { noremap = true })
vim.keymap.set("i", "<C-n>", "<Down>", { noremap = true })
vim.keymap.set("i", "<C-p>", "<Up>", { noremap = true })
vim.keymap.set("i", "<C-a>", "<Esc>^i", { noremap = true })
vim.keymap.set("i", "<C-e>", "<End>", { noremap = true })
-- allow insert line below when in insert mode
vim.keymap.set("i", "<S-CR>", "<Esc>o", {
  noremap = true,
  silent = true,
})
-- allow insert line above when in insert mode
vim.keymap.set("i", "<C-S-CR>", "<Esc>O", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "0", "^", { noremap = true })
-- support Ctrl-D for deleting a character in insert mode
vim.keymap.set("i", "<C-d>", "<Del>", { noremap = true })
vim.keymap.set("n", "<leader>h", vim.diagnostic.open_float)
