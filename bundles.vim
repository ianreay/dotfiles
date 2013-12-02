:set nocompatible
:filetype off

" Unix 
:set rtp+=~/.vim/bundle/vundle/
" Windows
:set rtp+=c:/users/ianr/vimfiles/bundle/vundle/

:call vundle#rc()

" let Vundle manage Vundle
 " required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-commentary'
Bundle 'klen/python-mode'
Bundle 'sukima/xmledit'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'vimwiki'
Bundle 'vim-scripts/sessionman.vim'
Bundle "SirVer/ultisnips" 
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
"Bundle 'Lokaltog/powerline'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

 filetype plugin indent on     " required!
