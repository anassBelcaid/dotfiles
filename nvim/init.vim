"{{{ Plug Installation
call plug#begin('~/.config/nvim/bundle')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', {'do': 'nmp install'}
	Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'easymotion/vim-easymotion'
Plug 'SirVer/ultisnips'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'zacanger/angr.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'konfekt/fastfold'
Plug 'kien/rainbow_parentheses.vim'
" Plug 'andymass/vim-matchup'
Plug 'junegunn/vim-slash'
Plug 'roxma/vim-hug-neovim-rpc', has('nvim') ? { 'on' : [] } : {}
Plug 'roxma/nvim-yarp', has('nvim') ? { 'on' : [] } : {}
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-commentary'
Plug 'itspriddle/vim-marked'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'tpope/vim-speeddating'
Plug 'vimwiki/vimwiki'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi', {'do': ':UpdateRemotePlugins'}
call plug#end()
"}}}
"{{{ Pluging configurations
"{{{ Deoplete
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"}}}

"}}}
""{{{ General Options

set autoread                     " autoread external buffer

" backspace
set  backspace=indent,eol,start

" wildmenu
set wildmenu  

" status line
set laststatus=2

"Indentation
set autoindent

"incremental search
set incsearch

"setting tags

"setting the path
" set path=.,**

"ignoring files
set wildignore=*.o
set wildignore+=*~
set wildignore+=*.pyc
set wildignore+=.git/*
set wildignore+=.hg/*
set wildignore+=.svn/*
set wildignore+=*.DS_Store
set wildignore+=CVS/*
set wildignore+=*.mod

" Backup, swap
set noswapfile
set nobackup
set undofile
set undolevels=1000
set undoreload=10000

"automatically change the working directory
set autochdir

" lazy redraw
set lazyredraw

set confirm
set hidden
set textwidth=79
set nowrap
set linebreak

" make g the default in line substutition
set gdefault

" Completion
set wildmode=longest:full,full
set wildcharm=<c-z>
set complete+=U,s,k,kspell,d,]
set completeopt=longest,menu,preview

" Presentation
set list
set listchars=tab:▸\ ,nbsp:%,trail:\ ,extends:…,precedes:…
set fillchars=vert:│,fold:\ ,diff:⣿
set matchtime=2
set matchpairs+=<:>
set cursorline
set scrolloff=10
set splitbelow
set splitright
set previewheight=20
set noshowmode

" folding method
set foldmethod=marker
set foldlevelstart=0           " starting level
set foldcolumn=0

" Indentation
set softtabstop=2
set shiftwidth=2
set expandtab
set tabstop=2        " number of visual spaces per TAB
set copyindent
set preserveindent
silent! set breakindent

" Movement
set nostartofline
set ignorecase 
set smartcase
set infercase
set showmatch
set clipboard+=unnamedplus
set display=lastline
set virtualedit=block

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
elseif executable('ack-grep')
  set grepprg=ack-grep\ --nocolor
endif
"}}}
"{{{ Genral settings
filetype plugin indent on

" ==== disable swap file warning
set shortmess+=A

" security
set secure

" showcmd
set showcmd

" cursor line
"set cursorline

" show match 
set showmatch

" synatx on
syntax enable   

" save session
nnoremap <leader>s : mksession<CR>

" moving between splits
"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"}}}
"{{{ Mapping

" radical change
inoremap jk <esc>

"yank full line
nnoremap Y y$

" Buffer navigation
nnoremap <silent> gb :bnext<cr>
nnoremap <silent> gB : bprevious<cr>
"}}}
"{{{ Apparance and UI
set winwidth=70

" ==== Colors and other basic settings
colorscheme gruvbox
" colorscheme angr

"}}}
"{{{ Mouvement
nnoremap  j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" releaving ^and $
nnoremap $ <nop>
nnoremap $ <nop>
"}}}
"{{{ Theming

"set fillchars+=vert:\$
syntax enable

"automatic reload fo vim rc
set background=dark
set ruler
set hidden
"clipboard
set clipboard=unnamed
set mouse=c
set number
set laststatus=2
set tabstop=2
set softtabstop=2      " number of spaces in tabs
set expandtab          " tabs now are only spaces
let mapleader=","

highlight ColorColumn ctermbg=233
let &colorcolumn="80"
"}}}
"{{{ Easy Motion
" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)
"}}}
""{{{ CtlrP
let g:ctrlp_match_window = 'botom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_commad ='ag %s -l --nocolor --hidden -g ""'

"mapping for buffers
nnoremap <C-b> :CtrlPBuffer <CR>
" ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"}}}
"{{{ vimTex

" make vimtex ignore warning
let g:vimtex_log_ignore=['warning']
let g:tex_flavor = 'latex'
let g:vimtex_complete_enabled=1
let g:vimtex_view_method = 'mupdf'
let g:vimtex_complete_enabled = 1
let g:vimtex_compiler_progname = 'nvr'
"}}}
"{{{ Pluging configration
"{{{ Internal
" Disable a lot of unnecessary internal plugins
let g:loaded_2html_plugin = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_gzip = 1
let g:loaded_logipat = 1
let g:loaded_rrhelper = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_tarPlugin = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zipPlugin = 1
"}}}
"{{{ Deoplete
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" deoplete tab-complete
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"}}}
"{{{ Nerd tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1 " automatically close when open a file
let NERDTreeAutoDeleteBuffer = 1 "automatically delete the buffer
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = ['\.pyc$','\.log$', '\.aux$','\.fls$','\.out$','\.bbl$','\.blg$','\.fdb_latexmk$']
let g:NERDTreeWinSize = 30  " Controle the  size of the window
"}}}
"{{{ ale 
"
let g:ale_fix_on_save = 1
"}}}
"{{{ markdown
"
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic= 1
let g:vim_markdown_toc_autofit=1
let g:vim_markdown_emphasis_multiline = 0 
set conceallevel=2
let g:vim_markdown_math = 1
"}}}
"{{{ fast folding
let g:markdown_folding = 1
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
"}}}
"{{{ rainbow parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
"}}}
"{{{ match up
"}}}
"{{{ UltiSnippet
" Default directory for snippet 
" default new edit mode (prefer vertical)
"
" edition of new snippet
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
"}}}
"{{{ VimWiki
let g:vimwiki_list=[{'path':'~/vimwiki/','syntax':'markdown', 'ext':'.wiki'}]
"}}}
"{{{ airline theme:
let g:airline_theme= "tomorrow"
"}}}
"{{{ TagBar
nmap <F8> :TagbarToggle<CR>
let g:Tlist_WinWidth=40
"}}}
"}}}


