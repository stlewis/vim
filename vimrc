filetype off
set rtp+=/usr/local/opt/fzf
call plug#begin('~/.vim/plugged')

"UI/UX Plugins
Plug 'vim-scripts/CSApprox'
Plug 'vim-scripts/bufkill.vim'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'junegunn/goyo.vim'
Plug 'vimoutliner/vimoutliner'
Plug 'yegappan/mru'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'

" Shortcut/Snippet Plugins
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'ycm-core/YouCompleteMe'
Plug 'junegunn/fzf.vim'

" Other source modification plugins
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'

" External Tools Plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'

" Syntax/Language Support Plugins
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'stlewis/vim-rails'
Plug 'digitaltoad/vim-jade'
Plug 'groenewege/vim-less'
Plug 'sukima/xmledit'
Plug 'janko-m/vim-test'
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'

call plug#end()

filetype plugin indent on
set nocompatible
set noshowmatch
set noshowmode
set backspace=indent,eol,start
let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
set laststatus=2


" Editor view stuff
set background=dark
syntax on
colorscheme antares
map <F9> :RandomColorScheme<CR>

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Persistent Undo management
set undofile
set undodir=~/.vim/undodir




set clipboard=unnamed " On mac, allow copy/paste between vim and everything else
set mouse=a
set number " Show the current line number instead of 0
set relativenumber " But all other line numbers are relative to the current one
set nowrap
set scrolloff=1
if has('gui_running')
  set guifont=Source\ Code\ Powerline:h22
endif
set foldmethod=manual
set foldlevelstart=99


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


" Make arrow keys do something useful, resize the viewports accordingly
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Down> :resize +5<CR>
nnoremap <Up> :resize -5<CR>

" Remap semi-colon to colon to save a shift keystroke
noremap ; :

" Allow for hidden unsaved buffers
set hidden

" Cursor is always a block, even in insert mode.
set guicursor+=i:block-Cursor

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

" Open netrw in a vertical split
map <F2> :Vexplore <CR>
" Other netrw tweaks to get us into NERDTree-ish mode
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex

"" fzf tweaks
map <Leader>t :Files<CR>

" Lightline config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [['mode', 'paste'], ['gitbranch', 'readonly', 'filename', 'modified']]
      \ },
      \ 'component_function': { 'gitbranch': 'fugitive#head' }
      \}

" Tweak matched pair handling for HTML files
au FileType xml,xsd,html let b:delimitMate_matchpairs = "(:),[:],{:}"


" Tabline Fix
let g:buftabline_indicators = 1

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
nmap <silent> <Leader>s :TestNearest<CR>
nmap <silent> <Leader>S :TestFile<CR>
nmap <silent> <Leader>A :TestSuite<CR>

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-Space>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"

" Options for NerdCommenter
let g:NERDDefaultAlign='left'
map <Leader>// <Plug>NERDCommenterToggle('n', 'Toggle')<Cr>

set completeopt=longest,menuone,preview

function! JrnlSettings()
  set background=light
  colorscheme solarized8_light
  set ft=markdown
  set spell
  let g:airline_theme="solarized"
  hi htmlItalic cterm=italic
  hi htmlBold cterm=bold
endfunction

command! JrnlSettings call JrnlSettings()

let g:pencil#autoformat=1
let g:pencil#textwidth=80
let g:pencil_terminal_italics = 1

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft'})
  autocmd FileType text call pencil#init({'wrap': 'soft'})
  autocmd FileType otl call pencil#init({'wrap': 'soft'})}
augroup END

" Ruby specific stuff
let ruby_operators = 1
"set iskeyword-=_
