# dotfiles

## Requirements

- neovim
- [vim-plug](https://github.com/junegunn/vim-plug)

## Install

```bash
mkdir ~/git
cd ~/git
git clone https://github.com/jasonwbarnett/dotfiles.git
mkdir ~/.config
ln -s ~/git/dotfiles/nvim ~/.config/nvim

echo "[[ -f ~/git/dotfiles/bash/aliases.sh ]] && source ~/git/dotfiles/bash/aliases.sh" >> ~/.bash_profile

ln -s  ~/git/dotfiles/git/gitconfig ~/.gitconfig
ln -s  ~/git/dotfiles/git/gitignore ~/.gitignore

# vim-plug install
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Having issues?

You may want to try deleting the `~/.vim` directory completely and reinstall
plugins.

  1. `nvim`
  2. `:PlugInstall`
