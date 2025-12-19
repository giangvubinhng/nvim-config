local set = vim.opt
local g = vim.g

vim.cmd([[
  set clipboard=unnamedplus
  ]])

-- disable netrw at the very start
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

set.autoread = true
set.swapfile = false

set.number = true
set.autoindent = true
set.expandtab = true
set.smarttab = true
set.tabstop = 2
set.shiftwidth = 2
set.ttyfast = true
set.termguicolors = true
set.cursorline = true
set.fileencoding = 'utf-8'
set.hidden = true

-- disable log for lsp
vim.lsp.set_log_level("off")
