call plug#begin()
  Plug 'editorconfig/editorconfig-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'mattn/emmet-vim'

  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  Plug 'powerline/powerline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'flazz/vim-colorschemes'
call plug#end()

" Core?
colorscheme Chasing_Logic 
let base16colorspace=256
set termguicolors
set relativenumber
set encoding=UTF-8
syntax on

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

" Nerdtree
let g:NERDTreeWinSize = 45
let laststatus=2
map <C-n> :NERDTreeToggle<CR>

set mouse=a
set clipboard=unnamed
set tabstop=4
set shiftwidth=4

filetype plugin indent on
set autoindent
set expandtab
set smarttab
set softtabstop=2

" File actions
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>t :wq<cr>

" Window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Move vertically by visual line
nnoremap j gj
nnoremap k gk
