set number relativenumber
set noswapfile
" set cursorline

" tab & space
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
