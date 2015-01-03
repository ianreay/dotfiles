:set nocompatible
:filetype off

" Unix 
:set rtp+=~/.vim/bundle/vundle/
" Windows
:set rtp+=c:/users/ianr/vimfiles/bundle/vundle/

:call vundle#rc()

" let Vundle manage Vundle
 " required! 
Bundle 'nelstrom/gundo.vim'
Bundle 'dsawardekar/portkey'
Bundle 'gmarik/vundle'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-unimpaired'
Bundle 'klen/python-mode'
Bundle 'sukima/xmledit'
" Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'vimwiki'
Bundle 'vim-scripts/sessionman.vim'
Bundle "SirVer/ultisnips" 
Bundle 'tpope/vim-surround'
" Trying to use unite rather than ctrl p
" Bundle 'kien/ctrlp.vim'
Bundle 'PProvost/vim-ps1'
Bundle 'tpope/vim-cucumber'
Bundle 'vim-scripts/gtags.vim'
Bundle 'vim-scripts/OmniCppComplete'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/vcscommand.vim'
Bundle 'elzr/vim-json'
Bundle 'tpope/vim-fugitive'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'bling/vim-airline'
Bundle 'sheerun/vim-polyglot'
Bundle 'vim-scripts/grep.vim'
" grep.vim replaced with custom grep file
" Bundle 'honza/vim-snippets'
"   Disabled since it conflicts with other snippet items.

" Bundle 'vim-scripts/c.vim'
"   Creates conflicts with ulti snippets

Bundle 'tpope/vim-rake'
Bundle 'majutsushi/tagbar'
"" HTML Bundle
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'tpope/vim-haml'
" Bundle 'Shougo/neocomplcache.vim'
" Bundle 'JazzCore/neocomplcache-ultisnips'
Bundle 'Shougo/vimshell.vim'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'
" Requires a binary to be compiled from within the plugin directory
Bundle 'Shougo/neomru.vim'
Bundle 'Shougo/neossh.vim'
Bundle 'Shougo/vimfiler.vim'

Bundle 'junkblocker/patchreview-vim'


" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

 filetype plugin indent on     " required!
