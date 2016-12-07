filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/vmustache'
Plugin 'tobys/pdv'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jakobwesthoff/argumentrewrap'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'mhinz/vim-startify'

" I need to remove snipmate and use more ultisnips
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
