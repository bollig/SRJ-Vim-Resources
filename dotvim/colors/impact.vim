" Vim color file
" Maintainer:   Shirk <shirk@gmx.net>
" Last Change:  19 September 2005 - 0.2
" URL: trinity.gentoofreaks.org

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark     "or light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="impact"

if exists("g:impact_transbg")
        hi Normal       ctermfg=LightGray ctermbg=none
        hi NonText      ctermfg=DarkGray  ctermbg=none

        hi Statement    ctermfg=Blue      ctermbg=none
        hi Comment      ctermfg=DarkGray  ctermbg=none cterm=bold term=bold
        hi Constant     ctermfg=DarkCyan  ctermbg=none
        hi Identifier   ctermfg=Cyan      ctermbg=none
        hi Type         ctermfg=DarkGreen ctermbg=none
        hi Folded       ctermfg=DarkGreen ctermbg=none cterm=underline term=none
        hi Special      ctermfg=Blue      ctermbg=none
        hi PreProc      ctermfg=LightGray ctermbg=none cterm=bold term=bold
        hi Scrollbar    ctermfg=Blue      ctermbg=none
        hi Cursor       ctermfg=white     ctermbg=none
        hi ErrorMsg     ctermfg=Red       ctermbg=none cterm=bold term=bold
        hi WarningMsg   ctermfg=Yellow    ctermbg=none
        hi VertSplit    ctermfg=White     ctermbg=none
        hi Directory    ctermfg=Cyan      ctermbg=DarkBlue
        hi Visual       ctermfg=DarkGray ctermbg=LightGray  cterm=underline term=none
        hi Title        ctermfg=White     ctermbg=DarkBlue

        hi StatusLine   term=bold cterm=bold,underline ctermfg=White ctermbg=Black
        hi StatusLineNC term=bold cterm=bold,underline ctermfg=Gray  ctermbg=Black
        hi LineNr       term=bold cterm=bold ctermfg=White ctermbg=DarkGray
else
        hi Normal       ctermfg=LightGray ctermbg=Black
        hi NonText      ctermfg=DarkGray  ctermbg=Black

        hi Statement    ctermfg=Blue      ctermbg=Black
        hi Comment      ctermfg=DarkGray  ctermbg=Black cterm=bold term=bold
        hi Constant     ctermfg=DarkCyan  ctermbg=Black
        hi Identifier   ctermfg=Cyan      ctermbg=Black
        hi Type         ctermfg=DarkGreen ctermbg=Black
        hi Folded       ctermfg=DarkGreen ctermbg=Black cterm=underline term=none
        hi Special      ctermfg=Blue      ctermbg=Black
        hi PreProc      ctermfg=LightGray ctermbg=Black cterm=bold term=bold
        hi Scrollbar    ctermfg=Blue      ctermbg=Black
        hi Cursor       ctermfg=White     ctermbg=Black
        hi ErrorMsg     ctermfg=Red       ctermbg=Black cterm=bold term=bold
        hi WarningMsg   ctermfg=Yellow    ctermbg=Black
        hi VertSplit    ctermfg=White     ctermbg=Black
        hi Directory    ctermfg=Cyan      ctermbg=DarkBlue
        hi Visual       ctermfg=DarkGray ctermbg=LightGray  cterm=underline term=none
        hi Title        ctermfg=White     ctermbg=DarkBlue

        hi StatusLine   term=bold cterm=bold,underline ctermfg=White ctermbg=Black
        hi StatusLineNC term=bold cterm=bold,underline ctermfg=Gray  ctermbg=Black
        hi LineNr       term=bold cterm=bold ctermfg=White ctermbg=DarkGray
endif

if version >= 700 " Vim 7.x specific colors
"    hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=Magenta        cterm=BOLD
"   hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=Magenta     cterm=BOLD
"    hi MatchParen     guifg=#f6f3e8     guibg=#857b6f     gui=BOLD      ctermfg=white       ctermbg=darkgray    cterm=NONE
"    hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
"    hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
    hi Search         guifg=NONE        guibg=NONE        gui=underline ctermfg=Red        ctermbg=NONE        cterm=underline 
endif
