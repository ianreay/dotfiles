so ~/bundles.vim
if has("win32") || has("win16")
  :so ~/grep.vim
endif
" " IANR: go hardcore with your vim and use it the right way
" " :so ~/neocomplete.vim

filetype indent on

set nofoldenable " disable folding

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

" Various grep helpers for finding data in files.
command! -nargs=1 Fia :Ygrep <q-args> *
command! -nargs=1 Firb :Ygrep <q-args> *.rb
command! -nargs=1 Fic :Ygrep <q-args> *.cpp
command! -nargs=1 Fih :Ygrep <q-args> *.cpp
command! -nargs=1 Fijam :Ygrep <q-args> Jamfile
command! -nargs=1 Fixslt :Ygrep <q-args> *.xslt
command! -nargs=1 Fixml :Ygrep <q-args> *.xml
noremap fia :Ygrep <cword> *<CR>
noremap firb :Ygrep <cword> *.rb<CR>
noremap fic :Ygrep <cword> *.cpp<CR>
noremap fih :Ygrep <cword> *.hpp<CR>
noremap fixslt :Ygrep <cword> *.xslt<CR>
noremap fixml :Ygrep <cword> *.xml<CR>

nnoremap re :%s/\\begin{edit}\(\_.\{-}\)\\end{edit}/\1/gc

" Ctrl + S shortcut to save file
noremap <C-s> <esc>:w<CR>
inoremap <C-s> <esc>:w<CR>

" Ctrl + o shortcut to paste from system buffer
" since Ctrl + p is used by the ctrlp plugin
" noremap <C-p> <esc>"+gP
" inoremap <C-p> <esc>"+gP
"" Copy/Paste/Cut
noremap YY "+y<CR>
noremap P "+gP<CR>
noremap XX "+x<CR>


" Open .vimrc for quick-edit.
noremap <Leader>ev :edit $MYVIMRC<CR>
noremap <Leader>v :source $MYVIMRC<CR>
noremap <leader>b :edit ~/bundles.vim<CR>

" Quick session access
noremap <Leader>sl :SessionList<CR>
noremap <Leader>sa :SessionSaveAs 
 
" Quick formatting of text
noremap <Leader>fp gqap
noremap <Leader>fl gq<space>


" Quick reference for enabling and disabling spelling
noremap <F1> :setlocal spell! spelllang=en_us<CR>
setlocal spell spelllang=en_us

syntax on
filetype indent plugin on
set autoindent

set showcmd

""""""""""""""""""""""""""""""""""""""""""""
" Ruby
""""""""""""""""""""""""""""""""""""""""""""

" IANR: fix for very slow ruby intialization times
" http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
if has("win32") || has("win16")
	set re=1
endif

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1


""""""""""""""""""""""""""""""""""""""""""""
" Latex
""""""""""""""""""""""""""""""""""""""""""""
" Starting with Vim 7, the filetype of empty .tex files defaults to 'plaintex'
" instead of 'tex'. The following changes the default filetype back to 'tex'
" if has("win32") || has("win16")
  " let g:tex_flavor = 'latex'
" endif

""""""""""""""""""""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""""""""""""""""""""

" let g:pymode = 1

" Disabling the following python lint warnings:
" 501 - line to long. Complex code leads leads to lots of info. You can either
" have long lines that describe your problem or pages of code that is broken
" up in odd ways to try and pass the rule. Use human judgement about what
" works best.
" C901 - Sure complex functions are a smell, but arbitrarily saying "thow
" shalt not make long functions and instead contort your code in unnatural
" ways" is kind of throwing the baby out with the bath water. Use human
" judgement.
" E201 - I don't care about whitespace around brackets
" E202 - I don't care about whitepsace around brackets
" E231 - I don't care about whitespace after ,
" let g:pymode_lint_ignore="E501,C901,E201,E202,E231"

let g:pymode_lint_checker = "pyflakes,pep8"

autocmd FileType python setlocal tabstop=4 
autocmd FileType python setlocal softtabstop=4 
autocmd FileType python setlocal shiftwidth=4 
autocmd FileType python setlocal textwidth=80 
autocmd FileType python setlocal smarttab 
autocmd FileType python setlocal expandtab

""""""""""""""""""""""""""""""""""""""""""""
" Vimfiler
""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>b :VimFiler<cr>
let g:vimfiler_as_default_explorer = 1

""""""""""""""""""""""""""""""""""""""""""""
" Gundo
""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F5> :GundoToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""
" Unite
""""""""""""""""""""""""""""""""""""""""""""

"Map space to the prefix for Unite
nnoremap [unite] <Nop>
nmap <space> [unite]

let g:unite_source_history_yank_enable = 1
let g:unite_source_session_enable_auto_save = 1
let g:unite_enable_start_insert = 1
if has("win32")
  let g:unite_data_directory = "~\\.unite\\"
else
  let g:unite_data_directory =  "~/.unite/"
endif
let g:unite_source_file_mru_limit = 1000

" Always use fuzzy matching
call unite#filters#matcher_default#use(['matcher_fuzzy'])

nnoremap <silent> [unite]f :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
" nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <silent> [unite]r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
" nnoremap <silent> [unite]o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <silent> [unite]y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <silent> [unite]e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
" Quickly switch lcd
nnoremap <silent> [unite]d :<C-u>Unite -buffer-name=change-cwd -default-action=cd directory_mru directory_rec/async<CR>

" Ctrl-p file search replacement
nnoremap <C-p> :Unite -start-insert file_rec/async<cr>
" Content searching
nnoremap <silent> [unite]/ :Unite grep:.<cr>
" Quick buffer searching
nnoremap <silent> [unite]s :<C-u>Unite -start-insert buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  " imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  " imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

""""""""""""""""""""""""""""""""""""""""""""
" Tabularize
""""""""""""""""""""""""""""""""""""""""""""
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<cr>
  vmap <Leader>a= :Tabularize /=<cr>
  nmap <Leader>a: :Tabularize /:\zs<cr>
  vmap <Leader>a: :Tabularize /:\zs<cr>
  nmap <Leader>a| :Tabularize /|<cr>
  vmap <Leader>a| :Tabularize /|<cr>
endif

""""""""""""""""""""""""""""""""""""""""""""
" VimShell
""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>vs :VimShell<cr> 
let g:vimshell_disable_escape_highlight=1

""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-P
""""""""""""""""""""""""""""""""""""""""""""
" enable ctrlp directory caching. This can reduce load times significantly.
" let g:ctrlp_use_caching = 1
" let g:ctrlp_clear_cache_on_exit = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win32")
  :set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
  :hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
endif

""""""""""""""""""""""""""""""""""""""""""""
" NERDTree 
""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree
noremap <Leader>l :NERDTreeToggle<CR>
" Open NERDTree
noremap <Leader>L :NERDTree<CR>


""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
" let g:tagbar_ctags_bin = 'global'


""""""""""""""""""""""""""""""""""""""""""""
" By Tim Pope
""""""""""""""""""""""""""""""""""""""""""""
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
nnoremap gU :OpenURL <cfile><CR>
nnoremap gA :OpenURL http://www.answers.com/<cword><CR>
nnoremap gG :OpenURL http://www.google.com/search?q=<cword><CR>
nnoremap gW :OpenURL http://en.wikipedia.org/wiki/Special:Search?search=<cword><CR>

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

""""""""""""""""""""""""""""""""""""""""""""
" Grep
""""""""""""""""""""""""""""""""""""""""""""
if has("win32") || has("win16")
  let Grep_Path = 'C:\cygwin\bin\grep.exe'
  let Fgrep_Path = 'C:\cygwin\bin\fgrep.exe'
  let Egrep_Path = 'C:\cygwin\bin\egrep.exe'
  let Agrep_Path = 'C:\cygwin\bin\agrep.exe'
  let Grep_Find_Path = 'C:\cygwin\bin\find.exe'
  let Grep_Xargs_Path = 'C:\cygwin\bin\xargs.exe'
  let Grep_Cygwin_Find = 1
  let Grep_Shell_Quote_Char = "\""
endif

""""""""""""""""""""""""""""""""""""""""""""
" IANR's personal preferences
""""""""""""""""""""""""""""""""""""""""""""
" Since I always mistype w as W when I try to save files
command! W w

" disable the swap file. The warnings get anoying and sometimes
" they get committed
set noswapfile  

" wrap long lines
set wrap      

" " auto load files that are changing
set autoread  

"Set whitespace details
set tabstop=2
set shiftwidth=2
set expandtab

if has("win32") || has("win16")
  let g:vimwiki_list = [{'path': '~\\Dropbox\\vimwiki\\'}]
else
  let g:vimwiki_list = [{'path': '/Users/ianreay/Dropbox/vimwiki'}]
endif

" Quickly make html docs
noremap <Leader>mh :!make html<CR>

" Common file locations
nnoremap <Leader>tucas :lcd C:\w\internal\trunk\tucas<CR>
nnoremap <Leader>gem :lcd C:\w\internal\trunk\tucas-gem<CR>
nnoremap <Leader>fox :lcd C:\w\fox\trunk<CR>
nnoremap <Leader>82 :lcd C:\w\8.2<CR>
nnoremap <Leader>pam :lcd C:\inetpub\wwwroot\mockups\pam<CR>


""""""""""""""""""""""""""""""""""""""""""""
" Hitachi locations
""""""""""""""""""""""""""""""""""""""""""""

command! -nargs=1 Fisp :vimgrep /<q-args>/ common\dbaccess\*.xml
command! -nargs=1 Fis :vimgrep /table name=<q-args>/ common\dbaccess\schema.xml
command! -nargs=1 Fiapi :vimgrep /\cfunction name=<q-args>/ common\idapi\apifunctions.xml
command! -nargs=1 Fil :vimgrep <q-args> ui\src\common\*.kvg
command! -nargs=1 Fim4 :vimgrep <q-args> ui\src\common\*.m4

nnoremap gT :OpenURL https://bambam.hitachi-id.com/cgi-bin/tp.pl?ticket=<cfile><CR>

" Access quick files
noremap <leader>schema :edit common\dbaccess\schema.xml<CR>

""""""""""""""""""""""""""""""""""""""""""""
" Hardcore 
""""""""""""""""""""""""""""""""""""""""""""

" Force yourself to stop using arrow keys
" noremap <up> <nop>
" noremap <down> <nop>
" noremap <left> <nop>
" noremap <right> <nop>

""""""""""""""""""""""""""""""""""""""""""""
" Gtags 
""""""""""""""""""""""""""""""""""""""""""""

" search mappings
nnoremap <Leader>gs :Gtags -ge <CR>
" Goto defintion 
nnoremap <Leader>gt :Gtags <CR>
" Goto reference 
nnoremap <Leader>gr :Gtags -r <CR>

""""""""""""""""""""""""""""""""""""""""""""
" SVN 
""""""""""""""""""""""""""""""""""""""""""""

nnoremap <Leader>svnd :VCSDiff<CR>
nnoremap <Leader>svnb :VCSBlame<CR>
nnoremap <Leader>svna :VCSAdd<CR>
nnoremap <Leader>svnu :VCSUpdate<CR>
nnoremap <Leader>svnc :VCSCommit<CR>
nnoremap <Leader>svnl :VCSLog --limit 50<CR>
nnoremap <Leader>svnh :h vcscommand<CR>

""""""""""""""""""""""""""""""""""""""""""""
" GIT 
""""""""""""""""""""""""""""""""""""""""""""

" noremap <Leader>ga :!git add .<CR>
" noremap <Leader>gc :!git commit -m '<C-R>="'"<CR>
" noremap <Leader>gsh :!git push<CR>
" noremap <Leader>gs :Gstatus<CR>
" noremap <Leader>gb :Gblame<CR>
" noremap <Leader>gd :Gvdiff<CR>
" noremap <Leader>gr :Gremove<CR>

""""""""""""""""""""""""""""""""""""""""""""
" Patch 
""""""""""""""""""""""""""""""""""""""""""""
if has("win32") || has("win16")
  let g:patchreview_patch = 'c:\\cygwin\\bin\\patch.exe'
  let g:patchreview_patch_needs_crlf = 1
endif


""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete
""""""""""""""""""""""""""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
 
"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#tags#cache_limit_size = 5000000
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" let g:neocomplete#ctags_command = "global"
" let g:neocomplete#ctags_arguments = "_"

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
  \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
 
 
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
 
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
 let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^.\t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:]*\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:]*\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

noremap <Leader>tc <esc>:NeoCompleteTagMakeCache<CR>

""""""""""""""""""""""""""""""""""""""""""""
" Neosnippet
""""""""""""""""""""""""""""""""""""""""""""

" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" " SuperTab like snippets behavior.
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"

" " For snippet_complete marker.
" if has('conceal')
"   set conceallevel=2 concealcursor=i
" endif

" if has("win32")
"   let g:neosnippet#snippets_directory = "~\\.snippets\\"
" else
"   let g:neosnippet#snippets_directory = "~/.snippets/"
" endif

" " Open my ultisnips for the file type in question
" noremap <Leader>ns <esc>:NeoSnippetEdit<CR>

""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips 
""""""""""""""""""""""""""""""""""""""""""""
" " Open my ultisnips for the file type in question
noremap <Leader>us <esc>:UltiSnipsEdit<CR>

" " let g:UltiSnipsExpandTrigger = '<c-j>'
" let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger= '<c-j>'
let g:UltiSnipsJumpBackwardTrigger= '<c-k>'

function! UltiSnipsCallUnite()
  Unite -start-insert -winheight=100 -immediately -no-empty ultisnips
  return ''
endfunction

inoremap <silent> <F12> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
nnoremap <silent> <F12> a<C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>

""""""""""""""""""""""""""""""""""""""""""""
" Syntastic 
""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

" Python 
" let g:pymode_lint_write = 0
" let g:syntastic_mode_map = {
"     \ "mode": "active",
"     \ "active_filetypes": ["ruby", "cpp", "c", "xml"],
"     \ "passive_filetypes": ["python"] }

let g:syntastic_ignore_files = ['\.py$']

" Checkers 
let g:syntastic_cpp_checkers = ['cppcheck']
let g:syntastic_ruby_checkers = ['rubocop', 'mri', 'rubylint']
let g:syntastic_xml_checkers = ['xmllint']
" let g:syntastic_python_checkers = ['pylint', 'pep8', 'python']
" let g:syntastic_python_checkers = ['pylint']

"Paths to the various checkers
if has("win32") || has("win16")
  let g:syntastic_cpp_cppcheck_exec = 'C:/pslibs/extlib/tools/cppcheck/1.67/cppcheck.exe'
endif

" arguments for checkers
let g:syntastic_cpp_cppcheck_args = "--inline-suppr --error-exitcode=1 --quiet --suppressions-list=Jambuild/cppcheck-suppression-list.txt"
