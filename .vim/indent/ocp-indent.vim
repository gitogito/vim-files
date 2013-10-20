if exists('b:did_indent')
  finish
endif

setlocal indentexpr=GetOcpIndent()
setlocal indentkeys=0{,0},!^F,o,O,0=let\ ,0=and,0=in,0=end,0),0],0=\|],0=do,0=done,0=then,0=else,0=with,0\|,0=->,0=;;,0=module,0=struct,0=sig,0=class,0=object,0=val,0=method,0=initializer,0=inherit,0=open,0=include,0=exception,0=external,0=type,0=&&,0^,0*,0\,,0=::,0@,0+,0/,0-,0*)

"setlocal expandtab
"setlocal tabstop<
"setlocal softtabstop=2
"setlocal shiftwidth=2

"let b:undo_indent = 'setlocal '.join([
"      \   'autoindent<',
"      \   'expandtab<',
"      \   'indentexpr<',
"      \   'indentkeys<',
"      \   'shiftwidth<',
"      \   'softtabstop<',
"      \   'tabstop<',
"      \ ])

function! GetOcpIndent()
  let l = getline(1, v:lnum - 1)
  let currentline = getline(v:lnum)
  if match(currentline, '^\s*$') == -1
    " currentline has something
    call add(l, currentline)
  else
    " currentline has only spaces
    call add(l, "aaa")
  endif
  let s = join(l, "\n")
  let s = system("ocp-indent --numeric ", s)
  let n = system("tail -1 ", s)
  redraw!
  return n
endfunction

let b:did_indent = 1
