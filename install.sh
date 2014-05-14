#!/bin/bash
rm -rf ~/.dotfiles
git clone https://github.com/coder36/dotfiles.git ~/.dotfiles
old_dotfiles=~/".old_dotfiles_$(date +%s)"
mkdir $old_dotfiles

save() 
{
  local -r fileName="$1"
  if [ -e $fileName ]; then
    cp -R $fileName $old_dotfiles
    rm -rf $fileName
  fi
}

save ~/.vim
save ~/.vimrc
save ~/.zshrc
save ~/.tmux.conf
save ~/.gitconfig

ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

# bootstrap vundle
rm -rf ~/.dotfiles/vim/bundle/vundle
rm -rf ~/.oh-my-zsh
git clone https://github.com/gmarik/Vundle.vim.git ~/.dotfiles/vim/bundle/vundle
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
vim +PluginInstall +qall
echo "To set zsh as your default shell run: "
echo "chsh -s /bin/zsh"
