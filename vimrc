filetype off
set rtp+=/usr/local/opt/fzf
call plug#begin('~/.vim/plugged')

"UI/UX Plugins
Plug 'vim-scripts/bufkill.vim'
Plug 'yegappan/mru'
Plug 'scrooloose/nerdtree'
Plug 'romainl/vim-qf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Shortcut/Snippet Plugins
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'junegunn/fzf.vim'
" Note that ruby support requires solargraph gem and coc-solargraph
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" Other source modification plugins
Plug 'terryma/vim-multiple-cursors'

" External Tools Plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'airblade/vim-gitgutter'

" Syntax/Language Support Plugins
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'scrooloose/syntastic'
Plug 'stlewis/vim-rails'
Plug 'janko-m/vim-test'
Plug 'sheerun/vim-polyglot'
Plug 'ngmy/vim-rubocop'
Plug 'mattn/emmet-vim'

" Vim behavior modification
Plug 'chaoren/vim-wordmotion'
Plug 'Konfekt/FastFold'
Plug 'vim-utils/vim-ruby-fold'

call plug#end()

filetype plugin indent on
set nocompatible
set showmatch " noshowmatch
set noshowmode
set backspace=indent,eol,start
let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
set laststatus=2

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" Editor view stuff
colorscheme OceanicNext
set background=dark


syntax on
nohlsearch
set incsearch
map <F9> :RandomColorScheme<CR>

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

if (has("termguicolors"))
  set termguicolors
endif

" Persistent Undo management
set undofile
set undodir=~/.vim/undodir

set clipboard=unnamed " On mac, allow copy/paste between vim and everything else
set mouse=a

set number

set nowrap
set scrolloff=1
if has('gui_running')
  set guifont=Source\ Code\ Powerline:h22
endif
set foldmethod=syntax
set foldlevelstart=99
let g:ruby_fold=1

" File formatting
set expandtab
set tabstop=2
set autoindent
set copyindent
set shiftwidth=2
set shiftround
set ignorecase
set smartcase
set smarttab

" Backups and swaps
set nobackup
set noswapfile


" Default behavior tweaks
"
" Stop that annoying window from popping up -- Thanks Adam!
map q: :q

" Get rid of sounds when you miskey a command
set visualbell
set noerrorbells


" Remap semi-colon to colon to save a shift keystroke
noremap ; :

" Allow for hidden unsaved buffers
set hidden

" Regex settings
nnoremap / /\v
vnoremap / /\v

" Shift completion
vnoremap > >gv
vnoremap < <gv

" Don't replace copy buffer with pasted over contents
vnoremap p "_dP

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" JSX stuff
let g:jsx_ext_required = 0

map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
"" fzf tweaks
map <Leader>t :Files<CR>

" Tweak matched pair handling for HTML files
au FileType xml,xsd,html let b:delimitMate_matchpairs = "(:),[:],{:}"

" Remap tabline buffer switching to behave like tab switching
noremap gt :bnext<CR>
noremap gT :bprev<CR>

"Swap Windows more easily,
"nnoremap <C-j> <C-w>j
nn <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

let test#strategy = "dispatch"
nmap <silent> <Leader>s :wall<CR>:TestNearest<CR>
nmap <silent> <Leader>S :wall<CR>:TestFile<CR>
nmap <silent> <Leader>A :wall<CR>:TestSuite<CR>

" Keybindings and settings for CoC (Completion stuff)
set updatetime=300
set shortmess +=c
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


" Options for NerdCommenter
let g:NERDDefaultAlign='left'
map <Leader>// <Plug>NERDCommenterToggle('n', 'Toggle')<Cr>

set completeopt=longest,menuone,preview

" Ruby specific stuff
let ruby_operators = 1
"set iskeyword-=_

" syntastic tweaks
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']

" Airline
let g:airline#extensions#tabline#enabled = 1

" JSON formatting
com! FormatJSON %!python -m json.tool

