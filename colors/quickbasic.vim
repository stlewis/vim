set background=light
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="quickbasic"
hi Normal guifg=#c0c0c0 guibg=#010181
hi Comment guifg=#c0c0c0 guibg=NONE
hi Constant guifg=#c0c0c0 guibg=NONE
hi Directory guifg=#c0c0c0 guibg=NONE
hi Delimiter guifg=#c0c0c0 guibg=NONE
hi String guifg=#c0c0c0 guibg=NONE
hi htmlTagName guifg=#c0c0c0 guibg=NONE
hi Identifier guifg=#c0c0c0 guibg=NONE
hi Statement guifg=#c0c0c0 guibg=NONE
hi PreProc guifg=#c0c0c0 guibg=NONE
hi Type guifg=#c0c0c0 guibg=NONE
hi Function guifg=#c0c0c0 guibg=NONE
hi Repeat guifg=#c0c0c0 guibg=NONE
hi Operator guifg=#c0c0c0 guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi LineNr guifg=#c0c0c0
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
