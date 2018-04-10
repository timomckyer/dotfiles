call plug#begin()
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'honza/vim-snippets'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

  " Plugin outside ~/.vim/plugged with post-update hook
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'arcticicestudio/nord-vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'tpope/vim-fugitive'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ervandew/supertab'
  Plug 'powerline/powerline'

  " Language/framework & common stuff
  Plug 'pangloss/vim-javascript'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'posva/vim-vue'
  Plug 'mxw/vim-jsx'
  Plug 'quramy/tsuquyomi'
  Plug 'elzr/vim-json'
  Plug 'nikvdp/ejs-syntax'

  Plug 'Shougo/vimproc.vim', {'do': 'make'}

  Plug 'tomasiser/vim-code-dark'
  Plug 'severin-lemaignan/vim-minimap'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rking/ag.vim'
  Plug 'gioele/vim-autoswap'
  Plug 'dracula/vim'
call plug#end()

let g:deoplete#enable_at_startup = 1

" For the icons
set encoding=utf8
set guifont=DroidSansMono_Nerd_Font:h11

" Vim-Airline Configuration
let g:airline_theme='atomic'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" Theming
let ayucolor="dark"
let ayucolor="mirage"
colorscheme ayu

" NerdTree
let NERDTreeMinimalUI=1           " remove the 'press ? for help'
let NERDTreeShowHidden=1          " show hidden files by default
let NERDTreeAutoDeleteBuffer=1    " auto remove deleted file from buffer

" Show linenumbers
set relativenumber
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4

set mouse=a
filetype plugin indent on
syntax enable
set autoindent
set expandtab
set smarttab
set softtabstop=2
"set shiftwidth=2
set cursorline

set incsearch
set hlsearch
set hlsearch
set hlsearch

" Leader Leader creates visual linewise
nnoremap <Leader><Leader> V

"move vertically by visual line :)
nnoremap j gj
nnoremap k gk

" Allow vim yank and delete to go to clipboard
set clipboard=unnamed

" Map keys
let mapleader = "\<Space>"
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap mm @@

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>t :wq<cr>

" Nerdtree controls
map <C-n> :NERDTreeToggle<CR>

" Window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let g:NERDTreeWinSize = 55
let laststatus=2

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0

if executable('ag')
   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
 else
   let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif
