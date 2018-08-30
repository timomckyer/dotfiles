call plug#begin()
  Plug 'Shougo/deoplete.nvim'
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

  Plug 'honza/vim-snippets'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

  " Plugin outside ~/.vim/plugged with post-update hook
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'wincent/command-t'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'arcticicestudio/nord-vim'
  Plug 'tpope/vim-fugitive'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'powerline/powerline'

  " Language/framework & common stuff
  Plug 'pangloss/vim-javascript'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'posva/vim-vue'
  Plug 'mxw/vim-jsx'
  Plug 'quramy/tsuquyomi'
  Plug 'elzr/vim-json'
  Plug 'nikvdp/ejs-syntax'
  Plug 'cakebaker/scss-syntax.vim'

  Plug 'scrooloose/syntastic'
  Plug 'Valloric/YouCompleteMe'
  Plug 'Raimondi/delimitMate'

  Plug 'ap/vim-css-color'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'wavded/vim-stylus'
  Plug 'mattn/emmet-vim'
  Plug 'elzr/vim-json'
  Plug 'othree/html5.vim'

  Plug 'Shougo/vimproc.vim', {'do': 'make'}

  Plug 'tomasiser/vim-code-dark'
  Plug 'severin-lemaignan/vim-minimap'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rking/ag.vim'
  Plug 'gioele/vim-autoswap'
  Plug 'dracula/vim'
  Plug 'dikiaap/minimalist'
  Plug 'nightsense/carbonized'
  Plug 'chase/focuspoint-vim'
call plug#end()

" Important completion stuff
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" For the icons
set encoding=UTF-8
"set guifont=DroidSansMono_Nerd_Font:h11

" Vim-Airline Configuration
let g:airline_theme='base16_chalk'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

" NerdTree
let NERDTreeMinimalUI=1           " remove the 'press ? for help'
let NERDTreeShowHidden=1          " show hidden files by default
let NERDTreeAutoDeleteBuffer=1    " auto remove deleted file from buffer

colorscheme darcula

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
set termguicolors

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
