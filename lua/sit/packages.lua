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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use 'scrooloose/nerdtree'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'APZelos/blamer.nvim'
  use 'tpope/vim-fugitive'
  use 'Olical/conjure'
  use("RRethy/nvim-base16")
  use("kyazdani42/nvim-palenight.lua")

  -- sexp clojure editing
  use('guns/vim-sexp')
  use('tpope/vim-repeat')
  use 'tpope/vim-surround'
  use('tpope/vim-sexp-mappings-for-regular-people')

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
