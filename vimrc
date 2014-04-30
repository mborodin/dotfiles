set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set runtimepath^=~/.vim/bundle/ctrlp.vim

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'bling/vim-bufferline'
Bundle 'edkolev/tmuxline.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'techlivezheng/vim-plugin-minibufexpl'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'
Bundle 'klen/python-mode'
Bundle 'Matt-Stevens/vim-systemd-syntax'
" The bundles you install will be listed here

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
nmap l :set list!

set nu

syntax enable
set background=dark
colorscheme solarized

imap <C-s>l <ESC>:set invnumber<CR>i
nmap <leader>l :set invnumber<CR>
imap <C-F2> <ESC>:set paste<CR>i
nmap <C-F2> :set paste<CR>
imap <C-L> <ESC>:NERDTreeToggle<CR>i
nmap <C-L> :NERDTreeToggle<CR>

"let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
set colorcolumn=81
