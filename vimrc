syntax enable
set backspace=indent,eol,start
let mapleader = ','
set autowriteall
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
set guioptions-=e
hi vertsplit guifg=bg guibg=bg
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
nmap <Leader>ep :e ~/.vim/plugins.vim<cr>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader><space> :nohlsearch<cr>
"-----------make nerdtree-------------"
nmap <Leader>1 :NERDTreeToggle<cr>
nmap <Leader>f :tag<space>
"-----------Plugins-------------------"
"CtrlP"
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
"NerDTree"
let NERDTreeHijackNetrw = 0

nmap <c-R> :CtrlPBufTag<cr>
nmap <c-e> :CtrlPMRUFiles<cr>
"-----------laravel Specific----------"
nmap <Leader>lr :e routes/web.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader>c :e app/Http/Controllers/<cr>
nmap <Leader>m :e app/<cr>
nmap <Leader>v :e resources/views/<cr>


"-------------------auto command-------"


"Automatically source the Vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

function! IPhpInsertUse()
	    call PhpInsertUse()
	        call feedkeys('a',  'n')
	endfunction
	autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
	autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>
"------------------vundle---------------"


set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim


"----notes 
"ctrl ] to the method
"ctrl ^ back
