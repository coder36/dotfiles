set nocompatible      " We're running Vim, not Vi!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree.git'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'vim-ruby/vim-ruby'
Bundle 'bling/vim-airline'
Bundle 'henrik/vim-ruby-runner'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-dispatch'
Bundle 'http://github.com/ervandew/supertab.git'
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" ruby
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

" airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme='jellybeans'
nmap <leader><left> :bp!<CR>
nmap <leader><right> :bn!<CR>

" ruby runner
let g:RubyRunner_open_below = 1
let g:RubyRunner_key = '<Leader>R'
let g:RubyRunner_keep_focus_key = '<Leader>r'
let g:RubyRunner_window_size = 10

set bg=dark
