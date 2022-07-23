# Linux
set nu rnu
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
packadd! dracula
syntax enable
colorscheme dracula
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
set noswapfile
autocmd filetype cpp nnoremap <F5> :w <bar> !clear && g++ -std=c++17 -O2 -Wall % && ./a.out < in.txt<CR>

#Windows
syntax on
set rnu number
set clipboard=unnamed
filetype indent on
packadd! dracula
syntax enable
colorscheme monokai
colorscheme dracula
if has("gui_running")
	set guifont=JetBrains_Mono:h14:cANSI:qDRAFT
endif
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call  plug#end()
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
autocmd filetype cpp nnoremap <F5> :w <bar> !cls && g++ -std=c++17 -O2 -Wall % -o %:r && %:r.exe <CR>
set backspace=2
set backspace=indent,eol,start
set noswapfile

