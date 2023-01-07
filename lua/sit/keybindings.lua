-- uli's neovim config
-- https://git.schinz.it/dotfiles/nvim

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- reset highlited search
map("n", "<Space>", ":nohlsearch<CR>", { silent = true })
