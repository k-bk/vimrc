" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'robertmeta/nofrils'
Plug 'vim-syntastic/syntastic'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Color config 
colorscheme nofrils-light
set background=light
highlight MatchParen cterm=none ctermbg=none ctermfg=none

:let g:nofrils_heavycomments = 1
:NofrilsFocusNormal

nnoremap <C-\> :call CycleNofrils()<cr>
let g:nofrilsCycle = 0
function CycleNofrils()
	if g:nofrilsCycle == 0
		:NofrilsFocusCode
		let g:nofrilsCycle = 1
	elseif g:nofrilsCycle == 1
		:NofrilsFocusComments
		let g:nofrilsCycle = 2
	else
		:NofrilsFocusNormal
		let g:nofrilsCycle = 0
	endif
endfunction

" Other config
set number		    " show line numbers
set showcmd		    " show command in bottom bar
set wildmenu		" visual autocomplete bar
set showmatch		" highlight matching [{()}]

set mouse=a

set textwidth=80
set scrolloff=5

set hlsearch		" highlight all matches
set smartcase       " search for case only if upper case used
set ignorecase 

set tabstop=4		" number of visual spaces per <TAB>
set softtabstop=4	" number of spaces inserted and removed 
set shiftwidth=4    " number of spaces inserted
set expandtab		" tabs are spaces

filetype indent on	" load specyfic rules for indenting
set autoindent

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

set autochdir       " working directory is open file's directory

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" jk is escape
inoremap jk <esc>

" disable autocommenting
autocmd FileType * setlocal formatoptions-=cro 
