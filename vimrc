" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-sensible'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Color config
syntax enable
highlight MatchParen cterm=none ctermbg=none ctermfg=none
set t_Co=256

" PaperColor colorscheme
set background=dark
colorscheme PaperColor

" Gitgutter config
set signcolumn=yes

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

" Typescript-vim config
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" FZF config
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <Leader>f :Files<CR>
let g:fzf_layout = { 'down':  '40%'}

" Default file explorer (Netrw) setup
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_errorlvl = 2
let g:netrw_preview = 1
let g:netrw_winsize = 30
let g:netrw_chgwin = 2
let g:netrw_keepdir = 0

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

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
autocmd BufWritePre * %s/\s\+$//e " remove trailing whitespace

" Backup
set backup
set backupdir=~/vim_tmp
" Swap
set dir=~/vim_tmp
" Undo Backup
set undofile
set undodir=~/vim_tmp

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" disable autocommenting
autocmd FileType * setlocal formatoptions-=cro
