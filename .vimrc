" number
set number relativenumber

" tab & space
set tabstop=4
set shiftwidth=4

" set expandtab
set autoindent

" mouse
set mouse=a

" background
colorscheme elflord

" microsoft copy
if system('uname -r') =~ "microsoft"
        augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('/mnt/c/Windows/System32/clip.exe ',@")
        augroup END
endif
