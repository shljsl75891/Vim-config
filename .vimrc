syntax on
set rnu
set clipboard=unnamed
let g:syntastic_cpp_checkers = ['gcc']
let g:ycm_show_diagnostics_ui = 1
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1
packadd! dracula
colorscheme dracula
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
call plug#begin()
call plug#end()
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
