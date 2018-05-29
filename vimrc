" Vundle Settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" General Settings
set encoding=utf-8
set showmode
set number
set textwidth=100
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set rulerformat=%38(%#TabLine#\ %-t\ %m\ %#MatchParen#\ %12(%l:%c%V%)\ %k\ %4p%%%)
set undolevels=1000
set backspace=indent,eol,start
set colorcolumn=100
hi ColorColumn ctermbg=lightcyan
set ff=unix
set ffs=unix,dos,mac
hi ExtraWhitespace ctermbg=cyan
match ExtraWhitespace /\s\+$/
" Backups and swap management
if !isdirectory(expand("~/.tmp"))
    call mkdir(expand("~/.tmp"), "p")
endif
set backup

set undodir=~/.tmp//
set backupdir=~/.tmp//
set dir=~/.tmp//

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
" ##### END GENERAL SETTINGS

" ##### UTILITY SETTINGS

" Load pathogen and plugins if exists
if !empty(glob(expand("~/.vim/autoload"))) && filereadable(expand("~/.vim/bundle"))
    filetype off
    call pathogen#infect()
    call pathogen#helptags()
    filetype plugin indent on
endif

" Auto-reload of .vimrc
autocmd! bufwritepost ~/.vimrc source %

" Fix for pasting in insert mode
set pastetoggle=<F2>
" ##### END UTILITY SETTINGS

" ##### LEADER SHORTCUTS SETTINGS
" Set leader key to spacebar
let mapleader = "\<space>"

" Clear the last search highlights
noremap <Leader>c :noh<CR>

" Reload vimrc
noremap <Leader>R :so ~/.vimrc<CR>

" ##### TAB NAVIGATION
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
nnoremap tn :tabnew<CR>
nnoremap tt :tabedit<CR>
nnoremap td :tabclose<CR>
" ##### END TAB NAVIGATION

" ##### AIRLINE SETTINGS
hi StatusLine ctermfg=black ctermbg=white
set laststatus=2
set statusline=\ %f
set statusline+=%#warningmsg#
set statusline+=%*
set statusline+=\ %=%Y\ \ %p%%\ :\ \ %l/%L\ :\ \ %c
" ##### END STATUS LINE SETTINGS

" #### SAVE SHORTCUT
:noremap <Leader>s :w<CR>
" #### END SAVE SHORTCUT
"
" #### QUIT SHORTCUT
:noremap <Leader>q :q<CR>
" #### END QUIT SHORTCUT
"
" #### LINE NUMBERING TOGGLE
:noremap <Leader>l :set nonumber!<CR>
" #### END TOGGLE

"Ale Settings
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" END Ale

" Vim packages
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
