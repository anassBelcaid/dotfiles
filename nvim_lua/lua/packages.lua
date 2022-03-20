-- {{{ packer
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}


use { 'bennypowers/nvim-regexplainer',
      config = function() require'regexplainer'.setup()  end,
      requires = {
        'nvim-lua/plenary.nvim',
        'MunifTanjim/nui.nvim',
      }
  }

  use  'junegunn/goyo.vim'
  use {'vimwiki/vimwiki',
  config = function()
      vim.g.vimwiki_list = {{
        path='/home/anass/git/anass/wiki',
        syntax='markdown',
        ext='.md',
      }}
      vim.g.vimwiki_folding = 'expr'
      vim.g.vimwiki_markdown_link_ext = 1
      vim.g.vimwiki_global_ext = 0
      vim.g.vimwiki_use_calendar = 1
    end
  }
 use { 'joshdick/onedark.vim'}
 use 'tomasr/molokai'
 use 'lervag/vimtex'
 use {'neovim/nvim-lspconfig'}
 use 'williamboman/nvim-lsp-installer'

  use 'honza/vim-snippets'
  use 'tools-life/taskwiki'
  use { 'easymotion/vim-easymotion' }
  use 'plasticboy/vim-markdown' 
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-commentary' }
  use { 'nvim-telescope/telescope.nvim' }
  use { 'morhetz/gruvbox' }
  use { 'airblade/vim-gitgutter' }
  use {'nvim-treesitter/nvim-treesitter'}
  use {"akinsho/toggleterm.nvim"}
  use { 'hrsh7th/cmp-nvim-lsp' }
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  -- -- add other use -- for other packages

use 'nvim-lua/plenary.nvim'

-- within packer init {{{
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
-- }}}

end)
-- }}}
