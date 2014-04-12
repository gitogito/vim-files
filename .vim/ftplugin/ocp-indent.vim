map <buffer> gc A *)I(* hh
map <buffer> gC $xxx0f*hdw

"setlocal cmdheight=3 expandtab nowrap
setlocal expandtab nowrap
setlocal formatoptions=""
setlocal comments=""

function! InsertOCamlComment() range
  call append(a:firstline-1, "  (*")
  call append(a:lastline+1 , "   *)")
endfunction
vnoremap <buffer> * :call InsertOCamlComment()<CR>

function! OCamlType()
  echo system("ocamlannot " . bufname('%') . " " . (line2byte(line('.'))-1 + col('.')-1))
endfunction
map <buffer> ga :call OCamlType()<return>
