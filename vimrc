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

"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
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

" Indent guides configuration
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indentLine_color_bg_term = 'black'
let g:indentLine_color_term = 'darkGray'
"let g:indentLine_char = '┆'
"let g:indentLine_char = '¦'
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Show tabs and spaces
set listchars=tab:»\ ,eol:¬
set list listchars=tab:»·,trail:·

" Indents
set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case


set autochdir

syntax enable
filetype plugin indent on

" Visual stuff
set nu " Line numbering
set showmatch " Show matching brackets
set matchtime=5 " Bracket blinking
set laststatus=2 " Always show status line

" Folding
set foldenable " Turn on folding
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

set background=dark
colorscheme solarized

" Paste mode toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

inoremap <F1> <ESC>:set invnumber<CR>i
nnoremap <F1> :set invnumber<CR>
imap <C-L> <ESC>:NERDTreeToggle<CR>i
nmap ,l :NERDTreeToggle<CR>
inoremap <silent> <C-I> <ESC><Plug>IndentGuidesToggle<CR>i

"let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
:au BufNewFile,BufRead *.py set colorcolumn=80
