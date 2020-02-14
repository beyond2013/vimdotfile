set nocompatible

" required by vim-textobj-rubyblock plugin

runtime macros/matchit.vim

let $PATH="/home/imran/.rbenv/shims:/home/imran/.rbenv/bin:" . $PATH

filetype off

" I am now using minpac which uses new package feature for managing plugins
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-rails')
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')
call minpac#add('tpope/vim-fugitive')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('tpope/vim-surround')
" dependency of vim-textobj-rubyblock
call minpac#add('kana/vim-textobj-user')
call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('tpope/vim-commentary')
syntax on
filetype plugin indent on
" ================ General Config ====================

 set number relativenumber                       "relative Line numbers are best
 set columns=86
 set backspace=indent,eol,start  "Allow backspace in insert mode
 set history=1000                "Store lots of :cmdline history
 set showcmd                     "Show incomplete cmds down the bottom
 set showmode                    "Show current mode down the bottom
 set gcr=a:blinkon0              "Disable cursor blink
 set visualbell                  "No sounds
 set autoread                    "Reload files changed outside vim
 set path+=**                    "Look for files deep within directory hierarchy when using :find
 set wildmenu                    "Display all matching files when we tab complete 
 set wildignore=*.exe,*.pdf,*.jpeg,*.png
 set noshowmatch								"Disable parenthesis matching
" ================ Indentation ======================

 set autoindent
 set smartindent
 set smarttab
 set shiftwidth=2
 set softtabstop=2
 set tabstop=2
 set pastetoggle=<F2>          "use F2 to toggle auto-indentation
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

set ruler
set autowrite
set number
set numberwidth=5
set complete+=kspell

" Display tabs and trailing spaces visually
 set list listchars=tab:\ \ ,trail:·

 set wrap       "wrap lines
 set linebreak    "Wrap lines at convenient points
" Remap Ctrl + S to save files// note I have already disabled Ctrl+S in
" .bashrc by adding stty -ixon
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
" A Keybinding that allows to jump to the end of line in insert mode 
inoremap <C-e> <C-o>$
" A Keybinding that allows to jump to the beginning of line in insert mode 
 inoremap <C-a> <C-o>0

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ["UltiSnips",$HOME.'/backup/codesnippets']
