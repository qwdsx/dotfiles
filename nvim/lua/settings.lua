local g = vim.g
local o = vim.o

-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')

o.termguicolors = true
o.background = 'dark'
vim.cmd([[ colorscheme sonokai ]])

-- Do not save when switching buffers
o.hidden = true

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
-- o.number = true
-- o.numberwidth = 5
-- o.relativenumber = true
-- o.signcolumn = 'yes:2'
-- o.cursorline = true

o.number = true
o.ruler = true
o.syntax = true

o.expandtab = false
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true

o.tabstop = 4
o.shiftwidth = 4

o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
o.backupdir = '/tmp/'
o.directory = '/tmp/'
o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
o.jumpoptions = 'view'

-- Stable buffer content on window open/close events.
o.splitkeep = 'screen'

-- Improve diff
-- o.diffopt:append('linematch:60')

g.mapleader = ' '
g.maplocalleader = ' '

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
