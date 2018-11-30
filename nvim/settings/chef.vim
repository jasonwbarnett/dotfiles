" Officially distributed filetypes

" Support functions {{{
function! s:setf(filetype) abort
  if &filetype !~# '\<'.a:filetype.'\>'
    let &filetype = a:filetype
  endif
endfunction
" }}}

" Attributes
au BufNewFile,BufRead attributes/*.rb				call s:setf('ruby.chef')

" Recipes
au BufNewFile,BufRead recipes/*.rb				call s:setf('ruby.chef')

" Metadata
au BufNewFile,BufRead metadata.rb				call s:setf('ruby.chef')

" Resources
au BufNewFile,BufRead resources/*.rb				call s:setf('ruby.chef')

" Providers
au BufNewFile,BufRead providers/*.rb				call s:setf('ruby.chef')

" Templates
au BufNewFile,BufRead templates/**/*.erb				call s:setf('eruby.chef')
