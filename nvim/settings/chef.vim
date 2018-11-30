" Officially distributed filetypes

" Support functions {{{
function! s:setf(filetype) abort
  if &filetype !~# '\<'.a:filetype.'\>'
    let &filetype = a:filetype
  endif
endfunction
" }}}

" Attributes
au BufNewFile,BufRead attributes/*.rb				call s:setf('chef')

" Recipes
au BufNewFile,BufRead recipes/*.rb				call s:setf('chef')

" Metadata
au BufNewFile,BufRead metadata.rb				call s:setf('chef')

" Resources
au BufNewFile,BufRead resources/*.rb				call s:setf('chef')

" Providers
au BufNewFile,BufRead providers/*.rb				call s:setf('chef')
