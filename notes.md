# VIM

## Plugin Managers

- [vim-plug](https://github.com/junegunn/vim-plug)

## Plugins

- [NERD Commenter](https://github.com/scrooloose/nerdcommenter)
  - See [fork from ddollar](https://github.com/ddollar/nerdcommenter)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [supertab](https://github.com/ervandew/supertab)
- [fugitive.vim](https://github.com/tpope/vim-fugitive)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-json](https://github.com/elzr/vim-json)
- [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
  - Alternative: [vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace)
- [surround.vim](https://github.com/tpope/vim-surround)
  - Awesome plugin to delete, change and add surroundings (e.g. '')
- [eregex.vim](https://github.com/othree/eregex.vim)
  - Gives extended regular expression for search/replace
- [vim-yaml](https://github.com/stephpy/vim-yaml)
  - Faster/simpler than VIM 7.4 built-in YAML syntax
- [vim-go](https://github.com/fatih/vim-go)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby)
- [vim-markdown](https://github.com/plasticboy/vim-markdown)
- [DidYouMean](https://github.com/EinfachToll/DidYouMean)
  - When opening vim with a file that does not exist it presents a couple of
  possible files
- [ack.vim](https://github.com/mileszs/ack.vim)

### Fuzzy Finder

- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
- [fzf](https://github.com/junegunn/fzf)
- [fzf.vim](https://github.com/junegunn/fzf.vim)

### Status bar

- [vim-airline](https://github.com/vim-airline/vim-airline)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
  - [Why someone chose lightline over airline](http://newbilityvery.github.io/2017/08/04/switch-to-lightline/)

## Features

- persistent_undo
  - Persist undos betweem vim sessions
- scrolloff
  - Keep cursor centered
- splitbelow
- splitright
- number
- visualbell
- nowrap
- backspace=eol,start,indent
- hlsearch
- incsearch
- wildmenu
- wildignore
  - Ignore certain paths from wildmenu
- textwidth
  - This automatically wraps text at the specified width.
  - Can even be set on a per filetype basis (e.g. `autocmd BufRead,BufNewFile *.md setlocal textwidth=80`)
