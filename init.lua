vim.g.mapleader = " "

require("keymaps")
require("config.lazy")

vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.wo.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true
vim.opt.listchars = {
  space = "·",
  tab = "→ ",
  trail = "•",
  nbsp = "␣",
}
