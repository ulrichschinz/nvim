filetype plugin indent on
filetype plugin on
set tabstop=2 expandtab shiftwidth=2
set scrolloff=2
set laststatus=2
set nocompatible
set hidden
set list

set termencoding=utf-8

set autowrite

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
colorscheme Kafka

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching

" blamer
let g:blamer_enabled = 1

" Search for pattern
command -nargs=1 Search vimgrep /<args>/j ** <Bar> cw

"" folding with space
"set foldmethod=syntax
"nnoremap <C-space> za
"" replace leader by , since \ is hard to hit in ger layout
let mapleader = ","

" vim-go fatih hints

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader> :cclose<CR>

" build and run on go-files
autocmd FileType go nmap <leader>r <Plug>(go-run)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
let g:go_fmt_command = "gofmt"

" make all lists quickfix-lists
let g:go_list_type = "quickfix"

" configure ctrlp to use ripgerp
if executable('rg')
  let g:ctrlp_user_command = 'rg --files %s'
  let g:ctrlp_use_caching = 0
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_switch_buffer = 'et'
endif

" configure ack to use rg 
let g:ackprg = 'rg --vimgrep --no-heading'

" map enter and shift enter for newline after and before
nmap <CR> o<ESC>
nmap <S-Enter> O<ESC>
" Javascript
" enable keyboard shortcuts
" let g:tern_map_keys=1

" show argument hints
" let g:tern_show_argument_hints='on_hold'

" deoplete start
let g:deoplete#enable_at_startup = 1
