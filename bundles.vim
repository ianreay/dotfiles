:set nocompatible
:filetype off

" Unix 
" :set rtp+=~/.vim/bundle/vundle/
" Windows
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

" let Vundle manage Vundle
 " required! 
Plugin 'gmarik/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'gmarik/vundle'
Bundle 'Raimondi/delimitMate'
Bundle 'tommcdo/vim-exchange'
Bundle 'nelstrom/gundo.vim'
Bundle 'dsawardekar/portkey'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'klen/python-mode'
Bundle 'sukima/xmledit'
Bundle 'vimwiki'
Bundle 'vim-scripts/sessionman.vim'
Bundle "SirVer/ultisnips" 
Bundle 'PProvost/vim-ps1'
Bundle 'vim-scripts/gtags.vim'
Bundle 'vim-scripts/OmniCppComplete'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/vcscommand.vim'
Bundle 'elzr/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
" Make multiple commands that are reapeatable
" http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-unimpaired'
" common mappings from tpope
Bundle 'tpope/vim-abolish'
" Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-fugitive'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'bling/vim-airline'
Bundle 'sheerun/vim-polyglot'
Bundle 'vim-scripts/grep.vim'
Bundle 'godlygeek/tabular'
" grep.vim replaced with custom grep file
Bundle 'honza/vim-snippets'

" Bundle 'vim-scripts/c.vim'
"   Creates conflicts with ulti snippets

Bundle 'majutsushi/tagbar'
"" HTML Bundle
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'gorodinskiy/vim-coloresque'
" Bundle 'Shougo/neocomplcache.vim'
" Bundle 'JazzCore/neocomplcache-ultisnips'
Bundle 'Shougo/vimshell.vim'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'
" Requires a binary to be compiled from within the plugin directory
Bundle 'Shougo/neomru.vim'
Bundle 'Shougo/neossh.vim'
Bundle 'Shougo/vimfiler.vim'
Bundle 'Shougo/vinarise.vim'
Bundle 'Shougo/neocomplete.vim'
" Bundle 'Shougo/neosnippet.vim'
" Bundle 'Shougo/neosnippet-snippets'
" " ultisnips is being used instead
Bundle 'hewes/unite-gtags'

" Bundle 'Valloric/YouCompleteMe'
" disable youcompleteme in favor of neocomplete for cross platform support

Bundle 'junkblocker/patchreview-vim'


" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

call vundle#end()
filetype plugin indent on     " required!
