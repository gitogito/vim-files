" Vim color file
" Maintainer:	David Schweikert <dws@ee.ethz.ch>
" Last Change:	2006 Apr 30

hi clear

let colors_name = "mydelek"

" Normal should come first
hi Normal     guifg=Black  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
"hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue
hi DiffAdd    ctermbg=white    guibg=LightBlue
"hi DiffChange ctermbg=LightMagenta guibg=LightMagenta
hi DiffChange ctermfg=white ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete ctermfg=Blue	   ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
"hi DiffText   ctermbg=Red	   cterm=bold gui=bold guibg=Red
hi DiffText   ctermfg=white ctermbg=Red	   cterm=bold gui=bold guibg=Red
hi Directory  ctermfg=DarkBlue	   guifg=Blue
hi ErrorMsg   ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
hi FoldColumn ctermfg=DarkBlue	   ctermbg=Grey     guibg=Grey	    guifg=DarkBlue
hi Folded     ctermbg=Grey	   ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi IncSearch  cterm=reverse	   gui=reverse
hi LineNr     ctermfg=Brown	   guifg=Brown
hi ModeMsg    cterm=bold	   gui=bold
hi MoreMsg    ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi NonText    ctermfg=Blue	   gui=bold guifg=gray guibg=white
hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White	   ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
"hi Search     ctermfg=NONE	   ctermbg=Yellow guibg=Yellow guifg=NONE
"hi Search     ctermfg=White	   ctermbg=Black guibg=Yellow guifg=NONE
"hi Search     cterm=bold           gui=bold
"hi Search	guifg=#90fff0 guibg=#2050d0     cterm=bold ctermfg=Blue ctermbg=none cterm=underline term=underline
"hi Search	guifg=#90fff0 guibg=#2050d0     cterm=bold ctermfg=Black ctermbg=LightCyan
hi SpecialKey ctermfg=DarkBlue	   guifg=Blue
"hi StatusLine cterm=bold	   ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
"hi StatusLine cterm=bold	   ctermbg=white ctermfg=lightblue guibg=gold guifg=blue
"hi StatusLineNC	cterm=bold	   ctermbg=blue ctermfg=white  guibg=gold guifg=blue
"hi StatusLineNC	cterm=bold	   ctermbg=white ctermfg=darkblue  guibg=gold guifg=blue
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title      ctermfg=DarkMagenta  gui=bold guifg=Magenta
hi VertSplit  cterm=reverse	   gui=reverse
hi Visual     ctermbg=NONE	   cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold gui=underline,bold
hi WarningMsg ctermfg=DarkRed	   guifg=Red
hi WildMenu   ctermfg=Black	   ctermbg=Yellow    guibg=Yellow guifg=Black

" syntax highlighting
hi Comment    cterm=NONE ctermfg=DarkRed     gui=NONE guifg=red2
"hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3
hi Constant   cterm=NONE ctermfg=DarkBlue    gui=NONE guifg=DarkBlue
hi Identifier cterm=NONE ctermfg=LightRed    gui=NONE guifg=deepping
hi PreProc    cterm=NONE ctermfg=DarkMagenta gui=NONE guifg=magenta3
hi Special    cterm=NONE ctermfg=LightRed    gui=NONE guifg=deeppink
hi Statement  cterm=bold ctermfg=Blue	     gui=bold guifg=blue
hi Type	      cterm=NONE ctermfg=Blue	     gui=bold guifg=blue

hi Function   cterm=NONE ctermfg=Blue	     gui=bold guifg=blue

highlight ColorColumn ctermbg=Grey

" vim: sw=2
