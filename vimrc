" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'vim-syntastic/syntastic'
Plug 'wincent/command-t'
Plug 'NLKNguyen/papercolor-theme'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Color config
highlight MatchParen cterm=none ctermbg=none ctermfg=none
set t_Co=256

set background=dark
colorscheme PaperColor

" Other config
set number		    " show line numbers
set showcmd		    " show command in bottom bar
set wildmenu		" visual autocomplete bar
set showmatch		" highlight matching [{()}]
set hidden          " enable hidden buffers
set laststatus=2
set mouse=a
set mousefocus      " focus follows mouse
set scrolloff=7
set hlsearch		" highlight all matches
set smartcase       " search for case only if upper case used
set ignorecase

set expandtab		" tabs are spaces
autocmd FileType *       setlocal ts=4 sts=4 sw=4
autocmd FileType python  setlocal ts=4 sts=4 sw=4
autocmd FileType python3 setlocal ts=4 sts=4 sw=4
autocmd FileType lua     setlocal ts=3 sts=3 sw=3

filetype indent on	" load specyfic rules for indenting
set autoindent
autocmd BufWritePre * %s/\s\+$//e " remove trailing whitespace

"set autochdir       " working directory is open file's directory

" easily move between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" disable autocommenting
autocmd FileType * setlocal formatoptions-=cro
