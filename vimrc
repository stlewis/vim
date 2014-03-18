" Pathogen setup
execute pathogen#infect()
" Editor view stuff
syntax on
set mouse=a "Use the mouse in all modes.
" But add option to toggle it on and off.


set number
set backspace=2
set nowrap
set showtabline=2
set t_Co=256
set background=dark
colorscheme distinguished

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

" Quick mode switch
set timeoutlen=1000 ttimeoutlen=0

" Tabs and such 
map <C-n> :NERDTreeTabsToggle <CR>

"Window Switching
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Cursor is always a block, even in insert mode.
set guicursor+=i:block-Cursor

" Regex settings
vnoremap / /\v

" NerdTree Tabs Tweaks
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeDirArrows=0

" NerdTree Tweaks
let NERDTreeMapOpenInTab='<CR>'
let NERDTreeMapActivateNode='<Space>'

" CtrlP Tweaks
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_prompt_mappings = {
  \'AcceptSelection("e")': ['<c-t>', '<2-LeftMouse>'],
  \'AcceptSelection("t")': ['<c-t>', '<cr>'],
\}



