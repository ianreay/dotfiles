:so ~/bundles.vim
:so ~/cscope.vim
let pymode_folding=0

filetype indent on

" Since I always mistype w as W when I try to save files
command W w

" enable ctrlp directory caching. This can reduce load times significantly.
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0

" disable the swap file. The warnings get anoying and sometimes
" they get committed
set noswapfile  

" Use relative numbering. This makes movements more accurate
set relativenumber

" Starting with Vim 7, the filetype of empty .tex files defaults to 'plaintex'
" instead of 'tex'. The following changes the default filetype back to 'tex'
let g:tex_flavor = 'latex'
  
" use jk as a replacement for the esc key
inoremap jk <Esc> 
" wrap long lines
set wrap      
" auto load files that are changing
set autoread  

"Set whitespace details
set tabstop=2
set shiftwidth=2
set expandtab

" higlight all search results by default 
set hlsearch
set incsearch
set showmatch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" highlight current line
set cursorline
set cmdheight=1
" Ensure that at least 2 lines below the current cursor are displayed for
" context
set scrolloff=3
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
 
set wildmenu
set wildmode=list:longest

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
:hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" By Tim Pope
function! OpenURL(url)
  if has("win32")
    exe "!start cmd /cstart /b ".a:url.""
  elseif $DISPLAY !~ '^\w'
    exe "silent !sensible-browser \"".a:url."\""
  else
    exe "silent !sensible-browser -T \"".a:url."\""
  endif
  redraw!
endfunction
command! -nargs=1 OpenURL :call OpenURL(<q-args>)

" mapping to open URL under cursor
nnoremap gb :OpenURL <cfile><CR>
nnoremap gA :OpenURL http://www.answers.com/<cword><CR>
nnoremap gG :OpenURL http://www.google.com/search?q=<cword><CR>
nnoremap gW :OpenURL http://en.wikipedia.org/wiki/Special:Search?search=<cword><CR>

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Ctrl + S shortcut to save file
noremap <C-s> <esc>:w<CR>
inoremap <C-s> <esc>:w<CR>
" Ctrl + o shortcut to paste from system buffer
" since Ctrl + p is used by the ctrlp plugin
noremap <C-p> <esc>"+gP
inoremap <C-p> <esc>"+gP
noremap <C-t> <esc>:tabnew<CR>
let g:ctrlp_map = '<c-o>'

let g:vimwiki_list = [{'path': '~\\Dropbox\\vimwiki\\'}]

" Force yourself to stop using arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Toggle NERDTree
noremap <Leader>l :NERDTreeToggle<CR>
" Open NERDTree
noremap <Leader>L :NERDTree<CR>

" Open my ultisnips for the file type in question
noremap <Leader>us <esc>:UltiSnipsEdit<CR>

" Open .vimrc for quick-edit.
noremap <Leader>ev :edit $MYVIMRC<CR>
noremap <Leader>v :source $MYVIMRC<CR>

" Quick session access
noremap <Leader>sl :SessionList<CR>
noremap <Leader>sa :SessionSaveAs 
 
" Quick formatting of text
noremap <Leader>fp gqap
noremap <Leader>fl gq<space>

" Quickly make html docs
noremap <Leader>mh :!make html<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE (thanks Gary Bernhardt)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
noremap <Leader>n :call RenameFile()<cr>

" Quick reference for enabling and disabling spelling
noremap <F1> :setlocal spell! spelllang=en_us<CR>

syntax on
filetype indent plugin on
set autoindent

set showcmd
