" Stolen from: https://github.com/skwp/dotfiles/blob/master/vim/settings.vim

let vimsettings = '~/.config/nvim/settings'

for fpath in split(globpath(vimsettings, '*.vim'), '\n')
  exe 'source' fpath
endfor
