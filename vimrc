set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

set runtimepath^=~/.vim/bundle/ctrlp.vim

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-bufferline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'techlivezheng/vim-plugin-minibufexpl'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'Matt-Stevens/vim-systemd-syntax'
" The bundles you install will be listed here

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mhinz/vim-startify'
Plugin 'milkypostman/vim-togglelist'
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()

filetype plugin indent on

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

set laststatus=2

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
set noshowmode

let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "flak8,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

set tabstop=4
set shiftwidth=4
set expandtab

set autochdir

set listchars=tab:»\ ,eol:¬
set list listchars=tab:»·,trail:·
set nu

syntax enable
set background=dark
colorscheme solarized

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

inoremap <F1> <ESC>:set invnumber<CR>i
nnoremap <F1> :set invnumber<CR>
imap <C-L> <ESC>:NERDTreeToggle<CR>i
nmap ,l :NERDTreeToggle<CR>

"let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
:au BufNewFile,BufRead *.py set colorcolumn=80
