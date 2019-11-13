filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

" Vundle Base Plugins
 Plugin 'gmarik/Vundle.vim'

 " Dependency Plugins
Plugin 'tomtom/tlib_vim'
Plugin 'git://github.com/MarcWeber/vim-addon-mw-utils.git'

"UI/UX Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/CSApprox'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-colors-pencil'
Plugin 'junegunn/goyo'
Plugin 'vimoutliner/vimoutliner'
Plugin 'yegappan/mru'
Plugin 'itchyny/lightline.vim'

" Shortcut/Snippet Plugins
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'junegunn/fzf.vim'

" Other source modification plugins
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'

" External Tools Plugins
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'

" Syntax/Language Support Plugins
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'stlewis/vim-rails'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'sukima/xmledit'
Plugin 'thoughtbot/vim-rspec'
Plugin 'janko-m/vim-test'
Plugin 'plasticboy/vim-markdown'
Plugin 'elixir-lang/vim-elixir'
Plugin 'leafgarland/typescript-vim'
Plugin 'OrangeT/vim-csharp'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'

call vundle#end()

filetype plugin indent on
set nocompatible
set noshowmatch
set noshowmode
set backspace=2
let mapleader=","
set laststatus=2


" Editor view stuff
set background=dark
syntax on
"colorscheme solarized8_dark
colorscheme jellybeans
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors


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


" Make arrow keys do something useful, resize the viewports accordingly
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Down> :resize +5<CR>
nnoremap <Up> :resize -5<CR>

" Remap semi-colon to colon to save a shift keystroke
noremap ; :

" Quick mode switch
set timeoutlen=1000 ttimeoutlen=0
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

map <F2> :NERDTreeToggle <CR>

"" fzf tweaks
map <Leader>t :Files<CR>

" Tweak matched pair handling for HTML files
au FileType xml,xsd,html let b:delimitMate_matchpairs = "(:),[:],{:}"


" Tabline Fix
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" Remap tabline buffer switching to behave like tab switching
noremap gt :bnext<CR>
noremap gT :bprev<CR>

"Swap Windows more easily,
"nnoremap <C-j> <C-w>j
nn <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Configure Ack.vim to use ag instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'
" Configure Ack.vim to search in the background using vim-dispatch
let g:ack_use_dispatch = 1

" Configure vim-rspec commands
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>S :call RunCurrentSpecFile()<CR>
"map <Leader>a :call RunAllSpecs()<CR>
"let g:rspec_command = 'Dispatch bundle exec rspec {spec}'
"setl errorformat+=%+G%.%#

let test#strategy = "dispatch"
nmap <silent> <Leader>s :TestNearest<CR>
nmap <silent> <Leader>S :TestFile<CR>
nmap <silent> <Leader>A :TestSuite<CR>

" Supertab for Omnisharp and other omnisharp settings
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
let g:SuperTabClosePreviewOnPopupClose = 1

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-Space>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" Options for NerdCommenter
let g:NERDDefaultAlign='left'
map <Leader>// <Plug>NERDCommenterToggle('n', 'Toggle')<Cr>

set completeopt=longest,menuone,preview

function! JrnlSettings()
  set background=light
  colorscheme solarized8_light
  set ft=markdown
  set spell
  NERDTreeClose
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
