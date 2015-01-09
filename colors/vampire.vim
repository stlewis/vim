set background=dark
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="vampire"
hi Normal guifg=#ba6c6d guibg=#000000
hi Comment guifg=#6c6e73 guibg=NONE
hi Constant guifg=#ff0000 guibg=NONE
hi String guifg=#ff0004 guibg=NONE
hi htmlTagName guifg=#ff0000 guibg=NONE
hi Identifier guifg=#7f9999 guibg=NONE
hi Statement guifg=#ba3f3f guibg=NONE
hi PreProc guifg=#f20000 guibg=NONE
hi Type guifg=#ff0000 guibg=NONE
hi Function guifg=#bf5f5f guibg=NONE
hi Repeat guifg=#871919 guibg=NONE
hi Operator guifg=#ff0000 guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special