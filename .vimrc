" appearance
set showmode
" set cursorline
" set list

" line relative setting
set number relativenumber
set noswapfile

" tabs & space
set tabstop=4
set shiftwidth=4
set autoindent
" set expandtab

" window & tab
set showtabline=2
set splitbelow
set splitright

" search
set hlsearch
set incsearch
" set ignorecase

" mouse
set mouse=a

" color
syntax on
colorscheme elflord

" filetype
filetype on
filetype indent on
filetype plugin on

" remap the key to switch between the vim tabs
nnoremap <silent> <C-h> gT
nnoremap <silent> <C-l> gt

" remap the key to autocomplete bracket
" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
" inoremap " ""<Esc>i
" inoremap ' ''<Esc>i
" inoremap < <><Esc>i
" inoremap [ []<Esc>i

" autocmd setting
autocmd BufWritePre * :%s/\s\+$//e

" Linux and Mac OS copy to clipboard
set clipboard=unnamed
" Microsoft copy to clipboard
if system('uname -r') =~ "microsoft"
        augroup Yank
        autocmd!
		" the location of clip.exe
        autocmd TextYankPost * :call system('/mnt/c/Windows/System32/clip.exe ',@")
        augroup END
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" vim-airline-themes setting
let g:airline_theme='wombat'
" let g:airline_powerline_fonts = 1 " only can run on Unix-like environment
