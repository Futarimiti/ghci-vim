if version < 600
	syn clear
elseif exists('b:current_syntax')
	finish
endif

let b:current_syntax = 'ghci'

syn match ghciLineComment "---*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$"
syn region ghciBlockComment start="{-" end="-}"
syn match ghciShebang "\%^#!.*$"
syn match ghciCommand "\:[^ ]+"
syn match ghciExtension "\-X[^ ]+"
syn region ghciString start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match ghciChar "\<'[^'\\]'\|'\\.'\|'\\u[0-9a-fA-F]\{4}'\>"
syn keyword ghciConditional if then else
syn match ghciNumber "\<[0-9]\+\>\|\<[0-9_]\+\>\|\<0[xX][0-9a-fA-F_]\+\>\|\<0[oO][0-7_]\+\>\|\<0[bB][10_]\+\>"
syn match ghciFloat "\<[0-9]\+\.[0-9_]\+\([eE][-+]\=[0-9_]\+\)\=\>"

hi def link ghciLineComment Comment
hi def link ghciBlockComment Comment
hi def link ghciShebang Comment
hi def link ghciCommand Function
hi def link ghciExtension Structure
hi def link ghciString String
hi def link ghciChar String
highlight def link ghciConditional Conditional
highlight def link ghciNumber Number
highlight def link ghciFloat Float

