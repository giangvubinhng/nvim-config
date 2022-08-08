call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-ts-autotag'
Plug 'windwp/nvim-autopairs'
Plug 'mxw/vim-jsx'
Plug 'ryanoasis/vim-devicons'
Plug 'akinsho/toggleterm.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'neovim/nvim-lspconfig' 
Plug 'weilbith/nvim-code-action-menu'
Plug 'kosayoda/nvim-lightbulb'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'sainnhe/sonokai'
Plug 'simrat39/rust-tools.nvim'
call plug#end()

" mapping 
map <F5> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:airline#extensions#tabline#enabled = 1
set clipboard+=unnamedplus
set number
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse+=a
"set mouse=v
set showmatch
set wildmode=longest,list   " get bash-like tab completions
set ttyfast								"speed up scrolling in vim
set termguicolors
set encoding=UTF-8
filetype plugin on
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

autocmd CursorHold,CursorHoldI * lua require('nvim-lightbulb').update_lightbulb()
" coc prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" load the color scheme
"source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/sonokai.vim

"airline config
source $HOME/.config/nvim/airline-config.vim

"Lua telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "all",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,
	-- this should auto close and replace tag
  autotag = {
	enable = true,
  },


  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

require("toggleterm").setup{
	open_mapping = [[<F4>]],
	shade_terminals = true,
	start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
	direction = 'float',
  close_on_exit = true, -- close the terminal window when the process exits
}

require('telescope').load_extension('fzf')

require'lspconfig'.pyright.setup{}

require('nvim-lightbulb').setup({autocmd = {enabled = true}})

-- rust lsp
local opts = {
  -- rust-tools options
  tools = {
    autoSetHints = true,
    hover_with_actions = true,
    inlay_hints = {
      show_parameter_hints = true,
      parameter_hints_prefix = "",
      other_hints_prefix = "",
      },
    },

  -- all the opts to send to nvim-lspconfig
  -- these override the defaults set by rust-tools.nvim
  -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
  -- https://rust-analyzer.github.io/manual.html#features
  server = {
    settings = {
      ["rust-analyzer"] = {
        assist = {
          importEnforceGranularity = true,
          importPrefix = "crate"
          },
        cargo = {
          allFeatures = true
          },
        checkOnSave = {
          -- default: `cargo check`
          command = "clippy"
          },
        },
        inlayHints = {
          lifetimeElisionHints = {
            enable = true,
            useParameterNames = true
          },
        },
      }
    },
}
require('rust-tools').setup(opts)

EOF

