-- uli's neovim config
-- https://git.schinz.it/dotfiles/nvim

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('config')..'/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

local packer = require('packer')

packer.init({
  package_root = vim.fn.stdpath('config') .. '/pack/'
})

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'scrooloose/nerdtree'
  use 'APZelos/blamer.nvim'
  use 'tpope/vim-fugitive'
  use 'mileszs/ack.vim'
  use 'Olical/conjure'

  -- colorschemes
  use 'marko-cerovac/material.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- clojure
  use('clojure-vim/clojure.vim')

  -- sexp clojure editing
  use('guns/vim-sexp')
  use('tpope/vim-repeat')
  use 'tpope/vim-surround'
  use('tpope/vim-sexp-mappings-for-regular-people')

  -- nvim-cmp stuff
  use('neovim/nvim-lspconfig')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use('PaterJason/cmp-conjure')
  use('w0rp/ale')

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
