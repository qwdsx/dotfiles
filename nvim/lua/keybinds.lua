local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

map('n', '<C-S>', ':source ~/.config/nvim/init.lua<CR>')