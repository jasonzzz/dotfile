colorscheme darkzen

syntax on
filetype off
filetype plugin indent on

set langmenu=en_US.utf-8
language messages en_US.utf-8

set fenc=utf-8
set fencs=utf-8,gb18030,gbk,gb2312
set fileencodings=utf-8,gb18030,gbk,big5,gb2312
set nocompatible
"set rnu
set nu
set backspace=indent,eol,start
set ignorecase
set ruler
set hlsearch
set incsearch
set showcmd
set cindent
set showmatch
set foldmethod=indent
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
set colorcolumn=80
highlight ColorColumn ctermbg=543

" Highlight current line and column
set cursorline
set cursorcolumn

autocmd FileType html,xhtml,css,scss,javascript,eruby,ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.coffee set filetype=coffee

" window
map <c-w><c-j> <c-w>+
map <c-w><c-k> <c-w>-
map <c-w><c-l> <c-w>>
map <c-w><c-h> <c-w><
unmap <c-w>-
map <c-w>- :split<CR>
"TODO
"unknown <c-w>| orz
map <c-w>\ :vsplit<CR>

map <Leader>r :retab<CR>

nmap <Leader>tbc :tabnew<CR>
nmap <Leader>tbn :tabNext<CR>
nmap <Leader>tbp :tabprevious<CR>

vnoremap <Leader>s :sort<CR>
" better indentation
vnoremap < <gv
vnoremap > >gv

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/L9'
Bundle 'Lokaltog/powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'Townk/vim-autoclose'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'scrooloose/syntastic'
Bundle "flazz/vim-colorschemes"

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
set t_Co=256

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
nmap <Leader>N :NERDTreeToggle<CR>

" rainbow_parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au syntax * RainbowParenthesesLoadSquare
au syntax * RainbowParenthesesLoadBraces

" vim-indent-guides
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=1
set background=dark
map <Leader>I :IndentGuidesToggle<CR>

" vim-trailing-whitespace
map <Leader>] :FixWhitespace<CR>

" syntastic
map <Leader>\ :SyntasticCheck<CR>
let g:syntastic_auto_loc_list=0
let g:syntastic_php_checkers=['php','phpcs','phpmd']

" FuzzyFinder
map <Leader>f :FufFile<CR>
map <Leader>b :FufBuffer<CR>
