filetype plugin indent on
filetype plugin on
set tabstop=2 expandtab shiftwidth=2
set scrolloff=2
set laststatus=2
set nocompatible
set hidden

set termencoding=utf-8

" For PHP-Files
autocmd FileType php set tabstop=4 shiftwidth=1

" For js-filres
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" Higlight search terms
set hlsearch
" reset highlited search (highlighting disappears
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" enable syntax-highlighting
syntax on
syntax enable

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching

" Some settings for tern

" enable keyboard shortcuts
let g:tern_map_keys=1

" show argument hints
let g:tern_show_argument_hints='on_hold'

" deoplete start
let g:deoplete#enable_at_startup = 1
