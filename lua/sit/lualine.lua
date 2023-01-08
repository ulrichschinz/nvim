-- uli's neovim config
-- https://git.schinz.it/dotfiles/nvim

local ok, _ = pcall(require, 'lualine')
if ok then
  require('lualine').setup()
end
