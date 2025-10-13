-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- run a shell command on the current file using absolute path
map('n', '<C-p>', ':!%:p<CR>')
-- Mapleader
-- vim.g.mapleader = "\\"
-- vim.g.maplocalleader = "\\"

-- moving lines
vim.cmd([[
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
]])

-- Move to previous/next
map('n', '<A-,>', '<Cmd>bp<CR>')
map('n', '<A-.>', '<Cmd>bn<CR>')
-- Close buffer
map('n', '<A-c>', '<Cmd>bd<CR>')

-- Re-order to previous/next
-- map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>')
-- map('n', '<A->>', '<Cmd>BufferMoveNext<CR>')
-- Goto buffer in position...
-- map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
-- map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
-- map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
-- map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
-- map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
-- map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
-- map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
-- map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
-- map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
-- map('n', '<A-0>', '<Cmd>BufferLast<CR>')
-- Pin/unpin buffer
-- map('n', '<A-p>', '<Cmd>BufferPin<CR>')
