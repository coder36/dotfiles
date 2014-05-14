Introduction
===========

Dotfiles are typically used to configure the key mappings, plugins, status lines and colors.  They are normally found as hidden files in the home folder.  These are mine.


Features
--------

* Vim customization with ruby bindings and auto complete

* Zsh customisation with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
  
* tmux (Once in tmux, use Ctrl-A to activate tmux mode)



Installation
============


Prerequisites
-------------

* zsh
* git
* tmux
* vim
 

I've tested with [Vim 7.4](http://www.fullybaked.co.uk/articles/installing-latest-vim-on-centos-from-source) and [Tmux 1.8](https://gist.github.com/sturadnidge/4185338).  


Bootstrapper
------------

The easiest way to get up and running is to bootstrap it with:

    curl -Lo- https://github.com/coder36/dotfiles/raw/master/install.sh | bash
  
To set zsh as the default shell run (providing password when asked):
  
    chsh -s /bin/zsh
  
  
Vim key commands
----------------


    <Ctrl>-P Smart File search
    <\>-n Nerd Tree file browser
    <Ctrl>-R Treat current buffer as a ruby script and run


  
  
  
  
  
