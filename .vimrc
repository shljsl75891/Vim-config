set nu rnu
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jiangmiao/auto-pairs'
call plug#end()
syntax enable
colorscheme dracula
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
set noswapfile
autocmd filetype cpp nnoremap <F5> :w <bar> !clear && g++ -std=c++17 -O2 -Wall % && ./a.out < in.txt<CR>
autocmd filetype cpp nnoremap <F6> :w <bar> !clear && g++ -std=c++17 -O2 -Wall % && ./a.out<CR>
set mouse=a
