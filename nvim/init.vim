"{{{ Plug Installation
call plug#begin('~/.config/nvim/bundle')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim', {'do': 'nmp install'}
Plug 'scrooloose/nerdtree'
Plug 'jceb/vim-orgmode'
Plug 'airblade/vim-gitgutter'
Plug 'mzlogin/vim-markdown-toc'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'ryanoasis/vim-devicons'
Plug 'nanotech/jellybeans.vim'
Plug 'lervag/vimtex'
Plug 'easymotion/vim-easymotion'
Plug 'SirVer/ultisnips'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'chriskempson/base16-vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'zacanger/angr.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/limelight'
Plug 'junegunn/goyo.vim'
Plug 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'konfekt/fastfold'
Plug 'tmhedberg/simpylfold'
Plug 'kien/rainbow_parentheses.vim'
Plug 'flrnprz/candid.vim'
Plug 'blindFS/vim-taskwarrior'
Plug 'sbdchd/vim-run'
Plug 'junegunn/vim-slash'
Plug 'roxma/vim-hug-neovim-rpc', has('nvim') ? { 'on' : [] } : {}
Plug 'roxma/nvim-yarp', has('nvim') ? { 'on' : [] } : {}
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'wellle/targets.vim'
Plug 'chrisbra/Colorizer'
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

" Python provider is system not condas
" let g:python_host_prog = '/usr/bin/python2'
" let g:python3_host_prog = '/usr/bin/python'
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
set textwidth=80
set wrap
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
colorschem afterglow
" let g:jellybeans_overrides = {
" \    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
" \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
" \              'attr': 'bold' },
" \    'Comment': { 'guifg': 'cccccc' },
" \}
" " let g:jellybeans_use_term_italics = 1
let g:afterglow_italic_comments=1 
let g:afterglow_blackout = 1
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
" set background= light
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

map <SPACE> <leader>

highlight ColorColumn ctermbg=233
let &colorcolumn="80"


"{{{ Jellybeans customization
let g:jellybeans_overrides = {
\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\    'Comment': { 'guifg': 'cccccc' },
\}
"force jelly beans to use italics
let g:jellybeans_use_term_italics = 1
"}}}
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
let g:vimtex_view_method = 'zathura'
let g:vimtex_complete_enabled = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_quickfix_mode = 0 " never open the quickfix window
inoremap <C-Space> <C-x><C-o>
let g:vimtex_quickfix_warnings = {
  \ 'default' : 1,
  \ 'undefined_reference' : 1,
  \ 'multiply_defined_references' : 1,
  \}
" nvim compilation 
let g:vimtex_compiler_latexmk = {
        \ 'backend' : 'nvim',
        \ 'background' : 1,
        \ 'build_dir' : '',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'options' : [
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
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
"------ First wiki -----------
let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'
let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

"------ Second wiki -----
let wiki_2 = {}
let wiki_2.path = '~/github/anass/dotfiles/coursesNotes'
let wiki_2.index = 'main'

"------ Combining both wiki's-------
let g:vimwiki_list = [wiki_1, wiki_2]
"}}}
"{{{ airline theme:
" let g:airline_theme= "tomorrow"
let g:airline_theme='afterglow'
"}}}
"{{{ TagBar
nmap <F8> :TagbarToggle<CR>
let g:Tlist_WinWidth=40
"}}}
"{{{ Vim_Run:
let g:run_auto_close = 0
let g:run_split = 'right'
"}}}
"{{{ markdown visualization
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「Vim preview」'
"}}}
"{{{Goyo
nnoremap <Leader>gy :Goyo<CR>
"}}}
"}}}


