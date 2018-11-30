" Stolen from: https://github.com/skwp/dotfiles/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set runtimepath+=$GOROOT/misc/vim "This is for Golang"
set number                        "Line numbers are good
set backspace=indent,eol,start    "Allow backspace in insert mode
set history=1000                  "Store lots of :cmdline history
set showcmd                       "Show incomplete cmds down the bottom
set showmode                      "Show current mode down the bottom
set gcr=a:blinkon0                "Disable cursor blink
set visualbell                    "No sounds
set autoread                      "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

call plug#begin('~/.vim/plugged')
" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'uplus/deoplete-solargraph'

" Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-tmux-navigator'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Misc
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Search/Replace
Plug 'mileszs/ack.vim'
Plug 'othree/eregex.vim'

" Markup
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'elzr/vim-json'
Plug 'stephpy/vim-yaml'

" Languages
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'haml', 'eruby'] }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'vadv/vim-chef'

call plug#end()

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
"filetype indent on " This is automatically executed by plug#end()

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=999       " Keep cursor in the centor of screen at all times
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Custom Settings ========================
if filereadable(expand("~/.config/nvim/settings.vim"))
  source ~/.config/nvim/settings.vim
endif
