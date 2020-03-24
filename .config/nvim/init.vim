call plug#begin('~/.config/nvim')
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  
  " Deoplete
  if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
  endif

  " Ultisnips & Intellisense/Syntax support
  Plug 'SirVer/ultisnips'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'

  " NerdTree
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  " Airline
  Plug 'powerline/powerline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Themes
 Plug 'chriskempson/base16-vim'
  Plug 'flazz/vim-colorschemes'
call plug#end()

let g:deoplete#enable_at_startup = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" For the icons
set display+=lastline
set encoding=utf-8
set linebreak
set scrolloff=1
set sidescrolloff=5
set wrap
set encoding=utf-8

" Base16
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Vim-Airline Configuration
let g:airline_theme='atomic'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" NerdTree
let NERDTreeMinimalUI=1           " remove the 'press ? for help'
let NERDTreeShowHidden=1          " show hidden files by default
let NERDTreeAutoDeleteBuffer=1    " auto remove deleted file from buffer

colorscheme Chasing_Logic 
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" These are the basic settings to get the font to work (required):
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

set relativenumber
set termguicolors

set tabstop=4
set shiftwidth=4

filetype plugin indent on
syntax enable

set mouse=a
set autoindent
set expandtab
set smarttab
set softtabstop=2
set incsearch
set hlsearch
set hlsearch
set hlsearch

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" Leader Leader creates visual linewise
nnoremap <Leader><Leader> V

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

let g:NERDTreeWinSize = 40
 
