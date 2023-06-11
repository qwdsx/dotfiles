local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end




-- nvimtree
map('n', '<C-B>', ':NvimTreeToggle<CR>')
map('n', '<C-N>', ':NvimTreeFindFileToggle<CR>')

-- floaterm
-- map('n', "<C-T>", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ")
map('n', "t", ":FloatermToggle myfloat<CR>")
map('t', "<Esc>", "<C-\\><C-n>:q<CR>")