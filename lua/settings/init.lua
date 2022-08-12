local set = vim.opt
local g = vim.g
-- set.clipboard = 'set.clipboard + unnamedplus'
vim.cmd([[
  set clipboard+=unnamedplus
]])
set.number = true
set.autoindent = true
set.expandtab = true
set.smarttab = true
set.tabstop = 2
set.shiftwidth = 2
set.mouse = 'a'
set.ttyfast = true
set.termguicolors = true
set.cursorline = true
set.fileencoding = 'utf-8'
require('settings.gui-config')
