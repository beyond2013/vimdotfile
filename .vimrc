set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-rails'
call vundle#end()
syntax on
filetype plugin indent on
" ================ General Config ====================

 set number                      "Line numbers are good
 set backspace=indent,eol,start  "Allow backspace in insert mode
 set history=1000                "Store lots of :cmdline history
 set showcmd                     "Show incomplete cmds down the bottom
 set showmode                    "Show current mode down the bottom
 set gcr=a:blinkon0              "Disable cursor blink
 set visualbell                  "No sounds
 set autoread                    "Reload files changed outside vim
 set path+=**                    "Look for files deep within directory hierarchy when using :find
 set wildmenu                    "Display all matching files when we tab complete 
" ================ Indentation ======================

 set autoindent
 set smartindent
 set smarttab
 set shiftwidth=2
 set softtabstop=2
 set tabstop=2

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

 set nowrap       "Don't wrap lines
 set linebreak    "Wrap lines at convenient points
" Remap Ctrl + S to save files// note I have already disabled Ctrl+S in
" .bashrc by adding stty -ixon
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<s-j>"
let g:UltiSnipsJumpBackwardTrigger="<s-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', 'UltiSnips_mine']
