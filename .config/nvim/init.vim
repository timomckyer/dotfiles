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
  Plug 'posva/vim-vue'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'elzr/vim-json'
  Plug 'avakhov/vim-yaml'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'gioele/vim-autoswap'
  Plug 'editorconfig/editorconfig-vim'

  " Appearance plugins
  Plug 'airblade/vim-gitgutter'
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

  " General plugins
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

let g:UltiSnipsExpandTrigger = "<C-j>"

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
set completeopt=menu,preview

"
" use <tab> for trigger completion and navigate next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" tern
"autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" For the icons
set display+=lastline
set encoding=utf-8
set linebreak
set scrolloff=1
set sidescrolloff=5
set wrap
set encoding=UTF-8

" Vim-Airline Configuration
let g:airline_theme='aurora'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" NerdTree
let NERDTreeMinimalUI=1           " remove the 'press ? for help'
let NERDTreeShowHidden=1          " show hidden files by default
let NERDTreeAutoDeleteBuffer=1    " auto remove deleted file from buffer

colorscheme elflord

" These are the basic settings to get the font to work (required):
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
"set encoding=utf-8

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vue'] = '﵂'

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Show linenumbers
set relativenumber
"set ruler
"set termguicolors

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
"set cursorline

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
