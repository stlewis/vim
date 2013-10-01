" Pathogen setup
execute pathogen#infect()
" Editor view stuff
syntax on
set number
set backspace=2
set nowrap
let g:CommandTCancelMap=['<ESC>','<C-c>']
set t_Co=256
colorscheme ir_black

filetype plugin indent on

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




" Key RemapsLeader remap
let mapleader=","
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap ; :

" Tabs and such 
map <C-n> :NERDTreeTabsToggle <CR>
map <leader>n :tabnext <CR>
map <leader>p :tabprev <CR>
map <leader>w :tabclose <CR>

"Window Switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Cursor is always a block, even in insert mode.
set guicursor+=i:block-Cursor
