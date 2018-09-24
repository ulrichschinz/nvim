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
Plug 'dag/vim-fish'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lepture/vim-jinja'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
" Plug 'vimwiki/vimwiki'
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
"Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
call plug#end()
