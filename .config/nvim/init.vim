call plug#begin()
  " Intellisense plugins/language/framework support plugins
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
  Plug 'honza/vim-snippets'
  Plug 'othree/jspc.vim'
  Plug 'SirVer/ultisnips'
  Plug 'Raimondi/delimitMate'
  Plug 'Shougo/vimproc.vim', {'do': 'make'}
  Plug 'neoclide/coc.nvim', {'do': 'yarn install'}

  Plug 'neoclide/vim-jsx-improve'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " Syntax/editing plugins
  Plug 'scrooloose/syntastic'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'posva/vim-vue'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'elzr/vim-json'
  Plug 'avakhov/vim-yaml'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'gioele/vim-autoswap'
  Plug 'editorconfig/editorconfig-vim'

  " Appearance plugins
  Plug 'airblade/vim-gitgutter'
  Plug 'lifepillar/vim-solarized8'
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'powerline/powerline'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive'
  Plug 'sts10/vim-pink-moon'
  Plug 'chriskempson/base16-vim'

  " General plugins
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

" Set Proper Tabs
set mouse=a
set clipboard=unnamed
set tabstop=4
set shiftwidth=4

filetype plugin indent on
set autoindent
set expandtab
set smarttab
set softtabstop=2

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

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

let g:NERDTreeWinSize = 50
let laststatus=2
