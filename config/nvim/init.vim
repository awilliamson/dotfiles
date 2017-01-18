filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'SirVer/UltiSnips'
Plugin 'ervandew/matchem'
Plugin 'godlygeek/tabular'
Plugin 'Shougo/deoplete.nvim'
Plugin 'airblade/vim-gitgutter'
Plugin 'benekastah/neomake'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'szw/vim-tags'
Plugin 'scrooloose/nerdtree'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'zchee/deoplete-jedi'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'hdima/python-syntax'

call vundle#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1

set rnu
let g:molokai_original = 1

"set term=xterm-256color
set foldmethod=syntax

syntax enable
set t_Co=256   " This is may or may not needed.
colorscheme PaperColor
set background=dark

filetype plugin on
filetype indent on
set wildmenu
set wildchar=<TAB>
set wildmode=full

"UltiSnip options"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

let g:airline_powerline_fonts = 1
let g:airline_theme="bubblegum"
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set modeline
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"nmap <F9> :SCCompile<cr> 
"nmap <F10> :SCCompileRun<cr> 

inoremap <F10> <esc>mz:write<cr>:make<cr><cr>`zi

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set hidden
let g:enable_ycm_at_startup = 0

