" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'robertmeta/nofrils'
Plug 'vim-syntastic/syntastic'
Plug 'elmcast/elm-vim'
Plug 'vim-latex/vim-latex'
Plug 'wincent/command-t'
Plug 'NLKNguyen/papercolor-theme'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Color config 
highlight MatchParen cterm=none ctermbg=none ctermfg=none
let &t_ut='' " something to fix background in vim in kitty
set t_Co=256

set background=light
colorscheme PaperColor

" colorscheme nofrils-dark
" :let g:nofrils_heavycomments = 1
" :NofrilsFocusNormal

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
set hidden          " enable hidden buffers
set laststatus=2

set mouse=a

set textwidth=80
set scrolloff=7

set hlsearch		" highlight all matches
set smartcase       " search for case only if upper case used
set ignorecase 

set expandtab		" tabs are spaces
autocmd FileType *   setlocal ts=4 sts=4 sw=4
autocmd FileType lua setlocal ts=3 sts=3 sw=3

filetype indent on	" load specyfic rules for indenting
set autoindent

let g:tex_flavor = 'latex'

"set autochdir       " working directory is open file's directory

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" disable autocommenting
autocmd FileType * setlocal formatoptions-=cro 
