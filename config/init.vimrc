call plug#begin('~/.config/nvim/plugged')

" enable mouse marck / paste features
:set mouse=r

" Function for deoplete for async keyword completion
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'
Plug 'godlygeek/tabular'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'APZelos/blamer.nvim'
Plug 'Townk/vim-autoclose'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'grassdog/tagman.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'saltstack/salt-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lepture/vim-jinja'
Plug 'mileszs/ack.vim'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'tools-life/taskwiki'
" Plug 'udalov/kotlin-vim'
" Plug 'dag/vim-fish'
" Plug 'rust-lang/rust.vim'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
" Plug 'lambdatoast/elm.vim'
" Plug 'elmcast/elm-vim'
" Plug 'justinj/vim-react-snippets'
" Plug 'tomtom/tlib_vim'
" Plug 'tpope/vim-rails'
" Plug 'pangloss/vim-javascript'
" Plug 'tpope/vim-bundler'
" Plug 'moll/vim-node'
" Plug 'klen/python-mode'
" Plug 'kylef/apiblueprint.vim'
call plug#end()

