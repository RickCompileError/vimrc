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

" encoding
set encoding=UTF-8

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
" To install without leaving vim, you can type ':source %\n :PlugInstall'
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'mattn/emmet-vim' 				(For HTML develop, ex. ul>li*3)
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' 				" Enable repeating vim-surround operation
Plug 'tomtom/tcomment_vim'
call plug#end()

" vim-airline-themes setting
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" nerdtree setting
nnoremap <silent> <F2> :NERDTreeToggle<Enter>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ctrlpvim setting
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" emmet-vim setting
" let g:user_emmet_install_global = 0
" autocmd FileType html,css,scss EmmetInstall
" autocmd FileType imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
