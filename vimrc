" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'dense-analysis/ale'
Plug 'elmcast/elm-vim'
Plug 'vim-latex/vim-latex'
Plug 'NLKNguyen/papercolor-theme'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Color config
syntax enable
highlight MatchParen cterm=none ctermbg=none ctermfg=none
set t_Co=256

" PaperColor colorscheme
set background=dark
colorscheme PaperColor

" Tagbar config
nmap <F8> :TagbarToggle<CR>

" FZF config
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <Leader> :GFiles<CR>
set grepprg=rg\ --vimgrep\ --smart-case\ --follow " use ripgrep instead of grep
let g:fzf_layout = { 'down':  '40%'}

" Default file explorer (Netrw) setup
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_errorlvl = 2
let g:netrw_preview = 1
let g:netrw_winsize = 30
let g:netrw_chgwin = 2

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :18Vexplore
augroup END


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

" make Y behaviour consistent with D
nnoremap Y y$

set expandtab		" tabs are spaces
autocmd FileType *       setlocal ts=4 sts=4 sw=4
autocmd FileType python  setlocal ts=4 sts=4 sw=4
autocmd FileType python3 setlocal ts=4 sts=4 sw=4
autocmd FileType lua     setlocal ts=3 sts=3 sw=3
autocmd FileType javascript      setlocal ts=2 sts=2 sw=2

filetype indent on	" load specyfic rules for indenting
set autoindent

let g:tex_flavor = 'latex'

" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=~/vim_tmp

" tell vim where to put swap files
set dir=~/vim_tmp

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
