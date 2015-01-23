" Vim color file - coolblue
" Generated by http://bytefluent.com/vivify 2014-03-26
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "coolblue"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
hi SignColumn guifg=#9fa7af guibg=#384048 guisp=#384048 gui=NONE ctermfg=103 ctermbg=238 cterm=NONE
hi SpecialComment guifg=#7ca06d guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi Typedef guifg=#e6a75a guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi Title guifg=#6fba50 guibg=NONE guisp=NONE gui=bold ctermfg=107 ctermbg=NONE cterm=bold
hi Folded guifg=#9fa7af guibg=#384048 guisp=#384048 gui=italic ctermfg=103 ctermbg=238 cterm=NONE
hi PreCondit guifg=#92c1df guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Include guifg=#92c1df guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#343434 guibg=#f0f0f0 guisp=#f0f0f0 gui=italic ctermfg=236 ctermbg=255 cterm=NONE
hi StatusLineNC guifg=#a1a1a1 guibg=#181818 guisp=#181818 gui=italic ctermfg=247 ctermbg=234 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#838383 guibg=#151515 guisp=#151515 gui=NONE ctermfg=8 ctermbg=233 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=NONE guibg=#000940 guisp=#000940 gui=NONE ctermfg=NONE ctermbg=17 cterm=NONE
hi ErrorMsg guifg=NONE guibg=#902020 guisp=#902020 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
"hi Ignore -- no settings --
hi Debug guifg=#7ca06d guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#beb0e6 guibg=NONE guisp=NONE gui=NONE ctermfg=146 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#7ca06d guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi Conditional guifg=#e6a75a guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#c7a070 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi Todo guifg=#838383 guibg=NONE guisp=NONE gui=bold ctermfg=8 ctermbg=NONE cterm=bold
hi Special guifg=#7ca06d guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi LineNr guifg=#635c5b guibg=#151515 guisp=#151515 gui=NONE ctermfg=241 ctermbg=233 cterm=NONE
hi StatusLine guifg=#e6e6e6 guibg=#101010 guisp=#101010 gui=italic ctermfg=254 ctermbg=233 cterm=NONE
hi Normal guifg=#e6e6e6 guibg=#000000 guisp=#000000 gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi Label guifg=#e6a75a guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#343434 guibg=#eeeeee guisp=#eeeeee gui=NONE ctermfg=236 ctermbg=255 cterm=NONE
hi Search guifg=#e699b8 guibg=#302028 guisp=#302028 gui=underline ctermfg=175 ctermbg=236 cterm=underline
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#678a9c guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi Statement guifg=#8199c2 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#8c8c8c guibg=NONE guisp=NONE gui=italic ctermfg=245 ctermbg=NONE cterm=NONE
hi Character guifg=#d36c4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
"hi Float -- no settings --
hi Number guifg=#e6c29e guibg=#af87ff guisp=#af87ff gui=NONE ctermfg=180 ctermbg=141 cterm=NONE
hi Boolean guifg=#8199c2 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Operator guifg=#e6e6d1 guibg=#151515 guisp=#151515 gui=NONE ctermfg=187 ctermbg=233 cterm=NONE
hi CursorLine guifg=NONE guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
"hi Union -- no settings --
hi TabLineFill guifg=#9199a1 guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
hi DiffDelete guifg=#343434 guibg=#220000 guisp=#220000 gui=NONE ctermfg=236 ctermbg=52 cterm=NONE
"hi ModeMsg -- no settings --
hi CursorColumn guifg=NONE guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi Define guifg=#92c1df guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Function guifg=#7a83e6 guibg=NONE guisp=NONE gui=NONE ctermfg=62 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#9fa7af guibg=#384048 guisp=#384048 gui=NONE ctermfg=103 ctermbg=238 cterm=NONE
hi PreProc guifg=#3fc2d3 guibg=NONE guisp=NONE gui=bold ctermfg=80 ctermbg=NONE cterm=bold
"hi EnumerationName -- no settings --
hi Visual guifg=NONE guibg=#404040 guisp=#404040 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
hi VertSplit guifg=#343434 guibg=#181818 guisp=#181818 gui=italic ctermfg=236 ctermbg=234 cterm=NONE
hi Exception guifg=#e6a75a guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi Keyword guifg=#e6a75a guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi Type guifg=#6074a6 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#100920 guisp=#100920 gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi Cursor guifg=NONE guibg=#b0d0f0 guisp=#b0d0f0 gui=NONE ctermfg=NONE ctermbg=153 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=NONE guibg=#902020 guisp=#902020 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
hi PMenu guifg=#e6e6e6 guibg=#000000 guisp=#000000 gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#838383 guibg=#343434 guisp=#343434 gui=NONE ctermfg=8 ctermbg=236 cterm=NONE
hi Constant guifg=#6175d6 guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#7ca06d guibg=NONE guisp=NONE gui=NONE ctermfg=108 ctermbg=NONE cterm=NONE
hi String guifg=#519bad guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi MatchParen guifg=#e6e6e6 guibg=#80a090 guisp=#80a090 gui=bold ctermfg=254 ctermbg=108 cterm=bold
"hi LocalVariable -- no settings --
hi Repeat guifg=#e6a75a guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#dcd287 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi Structure guifg=#92c1df guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Macro guifg=#92c1df guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
hi DiffAdd guifg=NONE guibg=#032218 guisp=#032218 gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi TabLine guifg=#343434 guibg=#b0b8c0 guisp=#b0b8c0 gui=italic ctermfg=236 ctermbg=7 cterm=NONE
hi cursorim guifg=#343434 guibg=#536991 guisp=#536991 gui=NONE ctermfg=236 ctermbg=60 cterm=NONE
"hi clear -- no settings --
hi pythonimport guifg=#009300 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#e60000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#009300 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#808ca6 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#009300 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi stringdelimiter guifg=#566a35 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=#e00095 guibg=NONE guisp=NONE gui=NONE ctermfg=162 ctermbg=NONE cterm=NONE
hi string guifg=#9baf6b guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi constant guifg=#d36c4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi normal guifg=#e6e6d1 guibg=#151515 guisp=#151515 gui=NONE ctermfg=187 ctermbg=233 cterm=NONE
hi rubyinstancevariable guifg=#b1a4e6 guibg=NONE guisp=NONE gui=NONE ctermfg=104 ctermbg=NONE cterm=NONE
hi rubyclass guifg=#47799c guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi identifier guifg=#beb0e6 guibg=NONE guisp=NONE gui=NONE ctermfg=146 ctermbg=NONE cterm=NONE
hi comment guifg=#8c8c8c guibg=NONE guisp=NONE gui=italic ctermfg=245 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter guifg=#540063 guibg=NONE guisp=NONE gui=NONE ctermfg=53 ctermbg=NONE cterm=NONE
hi rubyregexpspecial guifg=#a70075 guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#e05578 guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi function guifg=#e6bf70 guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi directory guifg=#dcd287 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#7798d6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=#7597c7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyidentifier guifg=#b1a4e6 guibg=NONE guisp=NONE gui=NONE ctermfg=104 ctermbg=NONE cterm=NONE