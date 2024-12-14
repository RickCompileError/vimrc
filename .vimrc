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
" Loading solarized8 color scheme
set background=dark
autocmd vimenter * ++nested colorscheme solarized8

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
inoremap {<CR> {<CR>}<Esc>O

" autocmd setting
autocmd BufWritePre * :%s/\s\+$//e " remove trivial white space

" fix chinese english spacing
function! FixChineseEnglishSpacing()
	" match Common CJK and Extended CJK
	%s/\(\w\)\([一-龥]\)\|\([一-龥]\)\(\w\)/\1\3 \2\4/g
endfunction

nnoremap <F5> :call FixChineseEnglishSpacing()<CR>

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
	" status/tabline for vim
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" <F2>, open file tree
	Plug 'scrooloose/nerdtree'

	" <Ctrl> + p, file finder (search file name)
	Plug 'ctrlpvim/ctrlp.vim'

	" Keyword finder (search word in file)
	" Plug 'mileszs/ack.vim'

	" fast surround plugin (S+<symbol> or cs<osym><nsym>)
	Plug 'tpope/vim-surround'

	" Enable repeating vim-surround operation
	Plug 'tpope/vim-repeat'

	" <Ctrl> + //
	Plug 'tomtom/tcomment_vim'

	" My colorscheme
	Plug 'lifepillar/vim-solarized8'

	" Git use in vim
	Plug 'tpope/vim-fugitive'

	" Quick see file overview, Need download dependency, so not use
	" Plug 'majutsushi/tagbar'

	" For HTML develop, ex. ul>li*3
	" Plug 'mattn/emmet-vim'

	" Plug 'ryanoasis/vim-devicons'
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
