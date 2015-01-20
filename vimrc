set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Vundle Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'tomtom/tlib_vim'
Plugin 'git://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'garbas/vim-snipmate'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat.git'
Plugin 'vim-scripts/Mouse-Toggle'
Plugin 'mkitt/tabline.vim'
Plugin 'honza/vim-snippets'
Plugin 'slim-template/vim-slim'
Plugin 'stlewis/vim-rails'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'kien/ctrlp.vim'
Plugin 'sukima/xmledit'
Plugin 'vim-scripts/CSApprox'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Plugin 'godlygeek/tabular'


call vundle#end()
filetype plugin indent on





" Editor view stuff
syntax on
set mouse=a "Use the mouse in all modes.
" But add option to toggle it on and off.
set clipboard=unnamed " On mac, allow copy/paste between vim and everything else


set number
set backspace=2
set nowrap
set showtabline=2
set scrolloff=1
set t_Co=256
set background=dark
set hlsearch
set incsearch
colorscheme steve


" File formatting
set expandtab
set tabstop=2
set autoindent
set copyindent
set shiftwidth=2
set shiftround
set showmatch
set ignorecase
set smartcase



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
" Clear out highlighting with a shortcut
nnoremap <leader><space> :noh<cr>


" Key Remaps
let mapleader=","
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap ; :

" Quick mode switch
set timeoutlen=1000 ttimeoutlen=0

" Tabs and such 
map <C-n> :NERDTreeTabsToggle <CR>
" Allow for hidden unsaved buffers
set hidden

"Window Switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Cursor is always a block, even in insert mode.
set guicursor+=i:block-Cursor

" Regex settings
nnoremap / /\v
vnoremap / /\v

" NerdTree Tabs Tweaks
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeDirArrows=0


" CtrlP Tweaks
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlPMixed'
 
" Tweak matched pair handling for HTML files

au FileType xml,xsd,html let b:delimitMate_matchpairs = "(:),[:],{:}"


" Tabline Fix
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'  

" Remap tabline buffer switching to behave like tab switching
noremap gt :bnext<CR>
noremap gT :bprev<CR>

" Configure Ack.vim to use ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Configure vim-rspec commands
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>S :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
setl errorformat+=%+G%.%#

" Tabularize 
map <Leader>= :Tabularize /=<CR>

