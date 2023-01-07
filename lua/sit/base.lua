-- uli's neovim config
-- https://git.schinz.it/dotfiles/nvim

-- Global (g:) editor variables
local g = vim.g

-- Vim options (:set)
local o = vim.o

o.termguicolors = true
o.tabstop = 2
o.expandtab = true
o.shiftwidth = 2
o.scrolloff = 2
o.laststatus = 2
o.nocompatible = true
o.hidden = true
o.list = true
o.termencoding = "utf-8"
o.autowrite = true
-- Higlight search terms
o.hlsearch = true

-- Show (partial) command in status line.
o.showcmd = true
-- Show matching brackets.
o.showmatch = true
-- Do case insensitive matching
o.ignorecase = true
-- Do smart case matching
o.smartcase = true

-- replace leader by , since \ is hard to hit in ger layout
g.mapleader = ","
g.maplocalleader = ","
