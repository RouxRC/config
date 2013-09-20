" Forget vi compatibility. Must be first: Side effects change subsequent options.
set nocompatible
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
" Keep a backup file
set backup
set backupdir=/tmp
set dir=/tmp
" Keep 50 lines of command line history
set history=5000
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd		
" Do incremental searching
set incsearch		
" The eighties are gone; we expect the mouse to work
"if has('mouse')
"  set mouse=a
"endif
if $VIM_CRONTAB == 'true'
  set nobackup
  set nowritebackup
endif
colorscheme ron
" Should always be available
"colorscheme desert
" Highlight syntax
syntax on
set background=dark
" Don't highlight very long lines (it ruins performance)
set synmaxcol=5000
" Highlight searches
set hlsearch
" Show absolute line numbers
"set number
" Wordwrap should break at the end of words
"set linebreak
" I really like seeing these characters sometimes
set listchars=tab:▸\ ,eol:¬
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
"set cindent
"set autoindent
"set smartindent
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Custom filetype mappings
au BufNewFile,BufRead *.article set filetype=html
au BufNewFile,BufRead *.less set filetype=less
" remap space to folding
nnoremap <space> za
vnoremap <space> zf
autocmd WinEnter,FileType python set foldmethod=indent
" Autocompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType perl set omnifunc=perlcomplete#CompletePerl
" Highlight cursor line/column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
"make vim save and load the folding of the document each time it loads"
"also places the cursor in the last place that it was left."
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview
" Map autocompletion to shift tab
inoremap <S-Tab> <C-n>
inoremap <Nul> <C-n>
set completeopt=menuone,longest,preview
" use more vertical splits
set splitright
set splitbelow
cmap vh :vertical help 
" display $ sign at end of change and substitute commands
set cpoptions+=$
