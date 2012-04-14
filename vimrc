syntax on
colorscheme desert

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

"comment out a block of code"
map ,# :s/^\(\s*\)/\1#/<CR> <Esc>:nohlsearch <CR>
map ,c :s/^\(\s*\)#/\1/<CR> <Esc>:nohlsearch <CR>

"toggle highlighting search results with space bar"
set hlsearch
noremap <silent> <Space> :silent noh<Bar>echo<CR>

"toggle line numbers with F2"
noremap \tp :set invnu<CR>
nmap <F2> \tp

map <silent> <F3> :set paste!<CR>

"syntax highlighting for protobuf"
augroup filetype
   au! BufRead,BufNewFile *.wsgi setfiletype python
 augroup end

au BufRead,BufNewFile hg-editor-*.txt setf mercurial

"remove trailing whitespace for python files
autocmd BufWritePre *.py :%s/\s\+$//e

"extra python syntax highlighting options"
let python_highlight_numbers = 1
let python_highlight_builtins = 1
let python_highlight_exceptions = 1

set hidden

call pathogen#infect()
filetype plugin indent on
