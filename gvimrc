" Seth R. Johnson
" https://github.com/sethrj/SRJ-Vim-Resources

colorscheme seth

"Hide tool bar
"set go-=T
"disable selection with mouse
"set selectmode=key

" first font is mac only
"set guifont=Menlo:h14,DejaVu\ Sans\ Mono:h14,Bitstream\ Vera\ Sans\ Mono\ 14,Monospace\ 11
set guifont=Monaco:h13

set transparency=20

" Don't go crazy horizontal
set fuoptions=maxvert

"set bg=dark
"if &background == "dark"
"	hi normal guibg=black
"	set transp=15
"endif


" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

