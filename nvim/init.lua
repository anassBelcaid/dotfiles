--- {{{ packer
require("packages")
require("general")
require("bindings")
require("markdown")
require("easymotion")
require("treesitter")
require("vimtex")
-- require("telescope")
require("snippets")
require("term")
require("completion")
-- }}}

-- local lsp = require('lsp-zero')
-- lsp.preset('recommended')
-- lsp.setup()

--{{{  lsp-installer
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local opts = {

  }
  server:setup(opts)
end)
--}}}
--
require'regexplainer'.setup {
  -- 'narrative'
  mode = 'narrative', -- TODO: 'ascii', 'graphical'

  -- automatically show the explainer when the cursor enters a regexp
  auto = false,

  -- Whether to log debug messages
  debug = false, 

  -- 'split', 'popup'
  display = 'popup',

  mappings = {
    toggle = 'gR',
    -- examples, not defaults:
    -- show = 'gS',
    -- hide = 'gH',
    -- show_split = 'gP',
    -- show_popup = 'gU',
  },

  narrative = {
    separator = '\n',
  },
}
