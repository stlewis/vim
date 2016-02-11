set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Vundle Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
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
Plugin 'plasticboy/vim-markdown'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-fireplace.git'
Plugin 'tpope/vim-leiningen.git'
Plugin 'elixir-lang/vim-elixir'



call vundle#end()
filetype plugin indent on





" Editor view stuff
syntax on
set mouse=a "Use the mouse in all modes.
" But add option to toggle it on and off.
set clipboard=unnamed " On mac, allow copy/paste between vim and everything else
" Enable code folding based on syntax
set foldmethod=syntax
set foldlevelstart=99


set number " Show the current line number instead of 0
set relativenumber " But all other line numbers are relative to the current one
set backspace=2
set nowrap
set showtabline=2
set scrolloff=1
set t_Co=256
set background=dark
set hlsearch
set incsearch
colorscheme steve
"colorscheme github


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
nnoremap <leader><Space> :noh<cr>


" Key Remaps
let mapleader=","

" Make arrow keys do something useful, resize the viewports accordingly
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Down> :resize +5<CR>
nnoremap <Up> :resize -5<CR>
noremap ; :
noremap < <gv
noremap > >gv

" Quick mode switch
set timeoutlen=1000 ttimeoutlen=0

" Tabs and such 
map <F2> :NERDTreeTabsToggle <CR>
" Allow for hidden unsaved buffers
set hidden

"Window Switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Cursor is always a block, even in insert mode.
set guicursor+=i:block-Cursor
set cursorline

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
" Configure Ack.vim to search in the background using vim-dispatch
let g:ack_use_dispatch = 1

" Configure vim-rspec commands
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>S :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
setl errorformat+=%+G%.%#

" Tabularize 
map <Leader>= :Tabularize /=<CR>

" Word Processor Mode

func! WordProcessorMode() 
  setlocal formatoptions=1 
  set formatoptions+=t
  setlocal noexpandtab 
  map j gj 
  map k gk
  setlocal spell spelllang=en_us 
  set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par\ -w80
  setlocal wrap 
  setlocal linebreak 
  set nonumber
  set norelativenumber
  set tw=80
  colorscheme lodestone
endfu 
com! WP call WordProcessorMode()

