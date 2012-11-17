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

"set transparency=17

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

augroup CursorLine
	au!
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	au WinLeave * setlocal nocursorline
augroup END

" Show a cursor line but disable it when we enter insert mode
" so we can see all syntax hilighting when we have our insert cursor
"set cursorline
autocmd InsertEnter * highlight CursorLine guifg=NONE guibg=#111111 ctermfg=NONE ctermbg=NONE
autocmd InsertLeave * highlight CursorLine guifg=NONE guibg=#330033 ctermfg=NONE ctermbg=darkyellow

:highlight CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE guibg=#330033 guifg=NONE
:highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE guibg=#330000 guifg=NONE
:highlight Cursor	     cterm=NONE ctermbg=green ctermfg=black guibg=green guifg=black
":nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Tex Mappings {{{
   
    " ,r: Forward-search with Skim    
    map <leader>r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-r>=line('.')<CR> %<.pdf %<CR>
   
    " Shortcuts for bras and kets (Dirac notation)
    imap <C-B> \langle
    imap <C-K> \rangle
    imap <C-v> qw<tab>
    " defined in snippets

    " Map \lz to write-compile-view
    nmap <buffer><leader>lz :w<cr><leader>ll<leader>lv<cr>
   
    " When compiling the file, the cursor doesn't stay where it was, but
    " jumps to the beginnig of line. Pressing `` will move the cursor back.
    " Let's map \la to save, compile with \ll and return the cursor with ``:
    nmap <buffer><leader>la :w<cr><leader>ll``

    " Map Alt-Tab to Vim-Latex autocomplete cite/ref (former <F9>):
    autocmd FileType tex imap <buffer> <M-TAB> <Plug>Tex_Completion

"}}}


