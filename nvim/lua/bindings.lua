--- {{{ saving with Ctl-S
local keymap = vim.api.nvim_set_keymap
keymap('n', '<C-s>', ':w<CR>', {})
keymap('i', '<C-s>', '<Esc>:w<CR>', {})
---}}}

---{{{ Window navigation
local opts = {noremap = true}
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
--}}}

-- easy Motion {{{ --
keymap('n', 'f', '<Plug>(easymotion-s)',{})
-- }}} easy Motion --
-- completion latex {{{ --
keymap('i','<c-Space>', '<c-x><c-o>',opts)
-- }}} completion latex --
--
-- {{{
local function nkeymap(key, map)
  keymap('n', key, map, opts)
end

-- {{{ lsp
nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
-- }}}

-- {{{telescope
-- Find files using Telescope command-line sugar.
nkeymap('<Leader>ff', '<cmd>Telescope find_files<cr>')
nkeymap('<Leader>fg', '<cmd>Telescope live_grep<cr>')
nkeymap('<Leader>fb', '<cmd>Telescope buffers<cr>')
nkeymap('<Leader>fh','<cmd>Telescope help_tags<cr>')
--}}}
--
---{{{
nkeymap('<Leader>n','<cmd>NvimTreeToggle<Cr>')
--}}}
