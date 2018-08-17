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
Plug 'moll/vim-node'
" Plug 'klen/python-mode'
Plug 'kylef/apiblueprint.vim'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-bundler'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'justinj/vim-react-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'grassdog/tagman.vim'
Plug 'dhruvasagar/vim-table-mode'
" Plug 'lambdatoast/elm.vim'
" Plug 'elmcast/elm-vim'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'saltstack/salt-vim'
Plug 'vimwiki/vimwiki'
Plug 'dag/vim-fish'
"Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
call plug#end()
