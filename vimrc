syntax enable
set backspace=indent,eol,start
let mapleader = ','
set number     "let's active line number

"-------------------visuals-----------"
colorscheme ron
set t_CO=256
set linespace=25
set guifont=Fira_Code:h17
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"-------------------searching-----------"
set incsearch
set hlsearch

"-------------------split manage-----------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------------mappings-----------"

"make it easy to edit vimrc file.
nmap <Leader>ev :e $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
"-----------make nerdtree-------------"
nmap <Leader>1 :NERDTreeToggle<cr>
"-----------Plugins-------------------"
"CtrlP"
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'


nmap <c-R> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>
"-------------------auto command-------"


"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"------------------vundle---------------"


set nocompatible              " be iMproved, required
so ~/.vim/plugins.vim
