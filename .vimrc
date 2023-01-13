" number
set number relativenumber

" tab & space
set tabstop=4
set shiftwidth=4

" set expandtab
set autoindent

" highlight search result
set hlsearch

" mouse
set mouse=a

" background
colorscheme elflord

" filetype
filetype on
filetype indent on
filetype plugin on

" remap the key to switch between the vim tabs
nnoremap <silent> <C-h> gT
nnoremap <silent> <C-l> gt

" microsoft copy
if system('uname -r') =~ "microsoft"
        augroup Yank
        autocmd!
		" the location of clip.exe
        autocmd TextYankPost * :call system('/mnt/c/Windows/System32/clip.exe ',@")
        augroup END
endif
