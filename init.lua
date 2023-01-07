-- uli's neovim config
-- https://git.schinz.it/dotfiles/nvim

require('sit.base')
require('sit.keybindings')
require('sit.undo')
require('sit.packages')
require('sit.colorscheme')
require('sit.cmp')

-- some addon stuff
require('lualine').setup()
