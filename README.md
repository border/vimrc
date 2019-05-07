vimrc
=====

My vimrc. Designed to work better with [Go].

## Vundle Install

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall


## YouCompleteMe Install

* https://github.com/Valloric/YouCompleteMe

    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh --clang-completer


## Golang Package

* go get -u github.com/bradfitz/goimports
* go get -u github.com/nsf/gocode
* go get -u github.com/jstemmer/gotags
* go get -u github.com/golang/lint/golint


## VIM Plug-in List

* Bundle 'gmarik/vundle'
* Bundle 'scrooloose/nerdtree'
* Bundle 'spf13/vim-colors'
* Bundle 'tpope/vim-fugitive'
* Bundle 'Lokaltog/vim-easymotion'
* Bundle 'minibufexpl.vim'
* Bundle 'cespare/vim-golang'
* Bundle 'undx/vim-gocode'
* Bundle 'monnand/vim-markdown'
* Bundle 'mattn/zencoding-vim'
* Bundle 'majutsushi/tagbar'
* Bundle 'po.vim'
* Bundle 'molokai'
* Bundle 'jimenezrick/vimerl'
* Bundle "ervandew/supertab"
* Bundle 'Lokaltog/vim-powerline'
* Bundle 'Yggdroot/indentLine'
* Bundle 'altercation/vim-colors-solarized'
* Bundle 'tomasr/molokai'
* Bundle 'Valloric/YouCompleteMe'
* Bundle 'taglist.vim'
* Bundle 'Raimondi/delimitMate'
* Bundle 'kien/rainbow_parentheses.vim'
* Bundle 'bling/vim-airline'


## VIM Tips

* Tab Quick Switch
    * Control + n
    * Tab + Shift
* Buffer
    * NORMAL ,be
* vim-go change 'gd' shortcut key to 'god'
```
vi ~/.vim/bundle/vim-go/ftplugin/go.vim +44
from: 44:  nnoremap <buffer> <silent> gd :GoDef<cr>
to: 44:  nnoremap <buffer> <silent> god :GoDef<cr>
```

[Go]: http://golang.org



