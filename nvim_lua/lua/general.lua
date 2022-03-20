-- General config {{{ --
local set = vim.opt
set.background = 'dark'
vim.g.mapleader = ' '
-- numbering {{{ --
set.number = false
-- }}} numbering --
-- }}} General config --
-- {{{ tabulation
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
--- }}}
-- {{{ swapfile
set.swapfile = false
set.backup  = false
set.writebackup = false
set.undofile  = true
-- }}}
-- Seach {{{ --
set.incsearch = true
set.hlsearch  = false
-- }}} Seach --
-- color scheme {{{ --
vim.cmd[[colorscheme molokai]]
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true
pcall(vim.cmd, 'colorscheme onedark')

-- }}} color scheme --
-- folding {{{ --
-- set.foldmethod="marker"
-- }}} folding --
-- Ignoring files {{{ --
vim.wildignore = [["*.o", "*~$", "*.pyc", ".git/*"]]
-- }}} Ignoring files --
-- limit screen 80 {{{ --
vim.wo.colorcolumn = '80'
-- }}} limit screen 80 --


--- keyboard {{{
set.clipboard='unnamedplus'
-- }}}
--
-- textwidth {{{ --
set.textwidth=80
set.wrap = false
-- }}} textwidth --
