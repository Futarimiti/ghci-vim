if version < 600
	syn clear
elseif exists('b:current_syntax')
	finish
endif

let b:current_syntax = 'ghci'

syn match ghciLineComment "---*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$"
syn region ghciBlockComment start="{-" end="-}"
syn match ghciShebang "\%^#!.*$"
syn match ghciCommand "\:[^ ]*"

hi def link ghciLineComment Comment
hi def link ghciBlockComment Comment
hi def link ghciShebang Comment
hi def link ghciCommand Function
