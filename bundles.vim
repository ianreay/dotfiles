:set nocompatible
:filetype off

" Unix 
" :set rtp+=~/.vim/bundle/vundle/
" Windows
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Package Managers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Package manager 
" https://github.com/gmarik/Vundle.vim
Plugin 'gmarik/Vundle.vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code navigators 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Provides fuzzy file finding
" https://github.com/kien/ctrlp.vim
Bundle 'kien/ctrlp.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Extensions 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Personal note taking tool that works very nicely with vim
" https://github.com/vim-scripts/vimwiki
Bundle 'vimwiki'
"
" Allows you to save and then re-open your vim sessions
" https://github.com/vim-scripts/sessionman.vim
Bundle 'vim-scripts/sessionman.vim'

" Helper for running external programs in vim.
" https://github.com/Shougo/vimproc.vim
Bundle 'Shougo/vimproc.vim'

" Build invoker that does not stall out vim
" https://github.com/tpope/vim-dispatch
Bundle 'tpope/vim-dispatch'

" Better summary line information in vim
" https://github.com/bling/vim-airline
Bundle 'bling/vim-airline'

" Grep support from within vim
" https://github.com/vim-scripts/grep.vim
Bundle 'vim-scripts/grep.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Explorers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allows people to create powerful navigation interfaces in vim
" for quikly moving between lists of items
" https://github.com/Shougo/unite.vim
Bundle 'Shougo/unite.vim'

" Helper that allows you to easily find your most recently used (mru) files.
" https://github.com/Shougo/neomru.vim
Bundle 'Shougo/neomru.vim'

" File explorer that leverages unite.vim
" https://github.com/Shougo/vimfiler.vim
Bundle 'Shougo/vimfiler.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto completion 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Quick auto completion
" https://github.com/Shougo/neocomplete.vim
Bundle 'Shougo/neocomplete.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Version Control 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Git plugin for vim
" https://github.com/tpope/vim-fugitive
Bundle 'tpope/vim-fugitive'

" Version control integration. Really useful with svn
" https://github.com/vim-scripts/vcscommand.vim
Bundle 'vim-scripts/vcscommand.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagging 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Gnu global editing support. Exceptional code navigator
" https://github.com/vim-scripts/gtags.vim
" Gnu Global: https://www.gnu.org/software/global/
Bundle 'vim-scripts/gtags.vim'

" Unite integration with gtags
" https://github.com/hewes/unite-gtags
Bundle 'hewes/unite-gtags'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippet managers 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Snippet manager. Extremely useful
" https://github.com/SirVer/ultisnips
" Screencast: http://vimcasts.org/episodes/meet-ultisnips/
" Screencast: http://vimcasts.org/episodes/ultisnips-python-interpolation/
Bundle "SirVer/ultisnips" 

" Common snippets for many lanaguages 
" https://github.com/honza/vim-snippets
Bundle 'honza/vim-snippets'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General editing helpers 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sublime text multiple cursor editing support
" https://github.com/terryma/vim-multiple-cursors
Bundle 'terryma/vim-multiple-cursors'

" Syntax checker (lint tool) for various languages
" https://github.com/scrooloose/syntastic
Bundle 'scrooloose/syntastic'

" Provides auto completion for brackets, quotes, etc
" https://github.com/Raimondi/delimitMate
Bundle 'Raimondi/delimitMate'

" Provides a clean way of exchanging two regions of text
" https://github.com/tommcdo/vim-exchange
" Screencast: http://vimcasts.org/episodes/swapping-two-regions-of-text-with-exchange-vim/
Bundle 'tommcdo/vim-exchange'

" Visualize undo trees from your undo history
" https://github.com/sjl/gundo.vim
" Screencast: http://www.screenr.com/M9l
Bundle 'sjl/gundo.vim'

" Makes easy editing of things that surround text like brackets, quotes, etc.
" https://github.com/tpope/vim-surround
Bundle 'tpope/vim-surround'

" Make multiple commands that are reapeatable
" http://vimcasts.org/episodes/creating-repeatable-mappings-with-repeat-vim/
Bundle 'tpope/vim-repeat'

" Very nice tool for commenting out code. Exceptionally useful.
" https://github.com/tpope/vim-commentary
Bundle 'tpope/vim-commentary'

" Common patterns for doing stuff that generally work very well in vim
" https://github.com/tpope/vim-unimpaired
Bundle 'tpope/vim-unimpaired'

" Helper that allows you to fix common typing issues
" https://github.com/tpope/vim-abolish
Bundle 'tpope/vim-abolish'

" General language package for 50+ programming languages to give you good
" syntax higlighting
" https://github.com/sheerun/vim-polyglot
Bundle 'sheerun/vim-polyglot'

" Helper for allowing you to get tabular data looking good in txt files
" https://github.com/godlygeek/tabular
Bundle 'godlygeek/tabular'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Javascript editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Javascript syntax higlighting
" https://github.com/jelera/vim-javascript-syntax
Bundle 'jelera/vim-javascript-syntax'

" Javascript editing package
" https://github.com/pangloss/vim-javascript
Bundle 'pangloss/vim-javascript'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python edting helpers. Pretty much a must have for the python langauge
" https://github.com/klen/python-mode
Bundle 'klen/python-mode'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" XML editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Helpers for editing xml well
" https://github.com/sukima/xmledit/
Bundle 'sukima/xmledit'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powershell editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Powershell script editing
" https://github.com/PProvost/vim-ps1
Bundle 'PProvost/vim-ps1'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C++ editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Omni completion with cpp tags database
" https://github.com/vim-scripts/OmniCppComplete
Bundle 'vim-scripts/OmniCppComplete'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ruby editing helpers
" https://github.com/vim-ruby/vim-ruby
Bundle 'vim-ruby/vim-ruby'

" The defacto ruby on rails plugin
" https://github.com/tpope/vim-rails
Bundle 'tpope/vim-rails'

" Adds end statements in ruby for you
" https://github.com/tpope/vim-endwise
Bundle 'tpope/vim-endwise'

" Ruby rake integration for vim
" https://github.com/tpope/vim-rake
Bundle 'tpope/vim-rake'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Json editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting and helpers for json editing
" https://github.com/elzr/vim-json
Bundle 'elzr/vim-json'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Json editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Haml editing helpers
Bundle 'tpope/vim-haml'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML Editing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'gorodinskiy/vim-coloresque'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hex editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hex editing in vim
" https://github.com/Shougo/vinarise.vim
Bundle 'Shougo/vinarise.vim'


" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EXPERIMENTAL PACKAGES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" disable youcompleteme in favor of neocomplete for cross platform support
" youcompleteme is great on unix but a world class pain on windows.
" Bundle 'Valloric/YouCompleteMe'

" Provides vim-rails style file relationships for moving quickly between
" related files
" IANR never really got this working well.
" Bundle 'dsawardekar/portkey'
"
" View patch files in vim
" IANR can't really get this working usefully. 
" Bundle 'junkblocker/patchreview-vim'
"
" Run shells such as bash and cmd from within vim
" IANR: it works, but its quirkly and not as good as real shells.
" Bundle 'Shougo/vimshell.vim'
"
" SSH integration with vim
" https://github.com/Shougo/neossh.vim
" Bundle 'Shougo/neossh.vim'
"
call vundle#end()
filetype plugin indent on     " required!
