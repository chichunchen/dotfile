set number
set shiftwidth=2
set tabstop=2
:syntax on
set autoindent
set smartindent
" highlight matching braces
set showmatch
set scrolloff=6

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

autocmd BufEnter *.tpp :setlocal filetype=cpp
autocmd BufEnter *.hpp :setlocal filetype=cpp

" Install Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'kien/rainbow_parentheses.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" Plugin configs
map <C-n> :NERDTreeToggle<CR>

" fzf
map <C-e> :Files<CR>

" auto completion
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:airline#extensions#tabline#enabled = 1
