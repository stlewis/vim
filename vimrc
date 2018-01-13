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
Plugin 'SirVer/ultisnips'
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
Plugin 'vim-airline/vim-airline'
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
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'reedes/vim-pencil'
Plugin 'vimoutliner/vimoutliner'
Plugin 'leafgarland/typescript-vim'
Plugin 'caglartoklu/ftcolor.vim'
Plugin 'OrangeT/vim-csharp'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'




call vundle#end()

filetype plugin indent on
set nocompatible
set noshowmatch
set backspace=2
let mapleader=","


" Editor view stuff
syntax on
set clipboard=unnamed " On mac, allow copy/paste between vim and everything else
set pastetoggle=<Leader>p
set number " Show the current line number instead of 0
set relativenumber " But all other line numbers are relative to the current one
set nowrap
set scrolloff=1
set background=dark
if has('gui_running')
  set guifont=Sauce\ Code\ Powerline:h18
endif
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
noremap ; :

" Quick mode switch
set timeoutlen=1000 ttimeoutlen=0
" Allow for hidden unsaved buffers
set hidden


" Cursor is always a block, even in insert mode.
set guicursor+=i:block-Cursor
set cursorline


" Regex settings
nnoremap / /\v
vnoremap / /\v

" Shift completion
vnoremap > >gv
vnoremap < <gv

" Don't replace copy buffer with pasted over contents
vnoremap p "_dP

" JSX stuff
let g:jsx_ext_required = 0

" NerdTree Tabs Tweaks
let g:nerdtree_tabs_focus_on_files=1
map <F2> :NERDTreeTabsToggle <CR>


" CtrlP Tweaks
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlPMixed'
 
" Tweak matched pair handling for HTML files
au FileType xml,xsd,html let b:delimitMate_matchpairs = "(:),[:],{:}"


" Tabline Fix
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'  

let g:airline_powerline_fonts = 1

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
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>S :call RunCurrentSpecFile()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
setl errorformat+=%+G%.%#


let g:pencil#autoformat=1
let g:pencil#textwidth=80
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text call pencil#init()
augroup END

" Colorscheme Per Buffer
colorscheme ir_black
let g:ftcolor_plugin_enabled          = 1
let g:ftcolor_redraw                  = 1
let g:ftcolor_default_color_scheme    = 'ir_black'
let g:ftcolor_custom_command          = 'AirlineRefresh'

let g:ftcolor_color_mappings          = {}
let g:ftcolor_color_mappings.markdown = ['no_quarter', 'dark']

 
" Supertab for Omnisharp and other omnisharp settings
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
let g:SuperTabClosePreviewOnPopupClose = 1



" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Options for NerdCommenter
let g:NERDDefaultAlign='left'
map <Leader>// <Plug>NERDCommenterToggle('n', 'Toggle')<Cr>

set completeopt=longest,menuone,preview
