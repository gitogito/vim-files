"set nocompatible
set cpoptions&
set cpoptions+=$
set hidden
set nobackup
set shortmess&
set shortmess+=I
set ruler
set laststatus=2
set history=1000
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set ignorecase
set incsearch
set nowrapscan
set hlsearch
set scrolloff=2
set lazyredraw
set nrformats&
set nrformats-=octal
set diffopt&
set diffopt+=iwhite
set ambiwidth=double
set fileencoding=utf-8
set fileencodings&
set fileencodings+=utf-8,cp932,sjis,euc-jp
set showmatch
set matchtime=1
set undofile
set undodir=$HOME/var/vim/undo
set backspace=eol,indent
set autoindent
set number
set formatoptions&
set formatoptions+=M
set cino+=:0
set modeline

let loaded_matchparen = 1

" Align
let g:Align_xstrlen = 3         " for japanese string
let g:DrChipTopLvlMenu = ''     " remove 'DrChip' menu

filetype plugin indent on

if &t_Co > 2 || has("gui_running")
    syntax on
    colorscheme mydelek
endif

" merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

nnoremap <ESC><ESC> :nohlsearch<CR>
noremap <Space> @@
noremap g/ :Migemo<CR>
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <Down> gj
nnoremap <Up> gk

autocmd BufRead,BufNewFile *.ml,*.mli set filetype=ocp-indent
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Filetype ocp-indent compiler ocaml
autocmd Filetype awk setlocal shiftwidth=4 expandtab
autocmd Filetype python setlocal shiftwidth=4 expandtab
autocmd Filetype ruby setlocal shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.ino set filetype=cpp

" go to the last position
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

let g:the_ocamlspot_disable_auto_type = 1
