-- uli's neovim config
-- https://git.schinz.it/dotfiles/nvim

-- Global (g:) editor variables
local g = vim.g

-- Vim options (:set)
local o = vim.o

local fn = vim.fn
local undopath = fn.stdpath('config')..'/undodir'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'mkdir', '-p', undopath})
end
o.undodir = undopath
o.undofile = true
