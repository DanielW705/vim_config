"Configuracion basica
"
set autoindent " autoindent always ON
set expandtab " expand tabs
set shiftwidth=2 " spaces for autoindenting
set softtabstop=2 " remove a full pseudo-TAB when i press <BS>
set scrolloff=8
set number relativenumber
set nu rnu
set splitbelow splitright
set foldmethod=manual
set lazyredraw
syntax enable
set showcmd
"set mouse=a
set encoding=utf-8
set showmatch
set ttyfast


"Creo que es para instalar plugs in
call plug#begin('~/.config/nvim/plugged')
  Plug 'mattn/emmet-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "LSP
  Plug 'neovim/nvim-lspconfig'
  "Isntalar lua
  Plug 'nvim-lua/completion-nvim'  
  "Este es el estilo 
  Plug 'ErichDonGubler/vim-sublime-monokai'
call plug#end()

"configuracion para emmet
let g:user_emmet_mode = 'a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Y>'

"configuracion para airline
let g:airline#extensions#tabline#emabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"configuracion del monkai
colorscheme sublimemonokai
"-----------------CoC config--------

"LSP con

lua << EOF
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
EOF


"================================
"Coc Configuracion


