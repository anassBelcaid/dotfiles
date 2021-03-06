"{{{ Vundle setup
set nocompatible "be iMproved
filetype off "required
set  exrc

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"==== plugin manager
Plugin 'VundleVim/Vundle.vim'

"===== Pluging Goyo for zen mode
"Plugin 'junegunn/goyo.vim'

"===== YouCompleteMe
"Plugin 'valloric/youcompleteme'

"=== helpers
"Plugin 'vim-scripts/L9'

" === File Tree
"Plugin 'scrooloose/nerdtree'

" ==== Base16 color
"Plugin 'chriskempson/base16-vim'

"Plugin 'ludovicchabant/vim-gutentags'

" === autotag
"Plugin 'craigemery/vim-autotag'

" ==== Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ==== syntax helpers
"Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'othree/yajs.vim'
"Plugin 'mitsuhiko/vim-jinja'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'ap/vim-css-color'
"Plugin 'Vimjas/vim-python-pep8-indent'
"Plugin 'lervag/vimtex'
" ==== moving / searching
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'

" ==== snippets
Plugin 'SirVer/ultisnips'

" Status bar on bottom
"Plugin 'bling/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'


" ==== PLUGIN THEMES
Plugin 'sjl/badwolf'
Plugin 'morhetz/gruvbox'

" Snippets are separated from the engine. 
Plugin 'honza/vim-snippets'
call vundle#end()

" tagbar 
"Plugin 'majutsushi/tagbar'

" nerd commenter
"Plugin 'scrooloose/nerdcommenter'
"}}}
"{{{ Genral settings
filetype plugin indent on

" folding method
set foldmethod=marker
set foldlevelstart=1           " starting level

" ==== disable swap file warning
set shortmess+=A

" security
set secure

<<<<<<< HEAD
" path for searching in subfolder (link :
" https://www.youtube.com/watch?v=XA2WjJbmmoM&t=408s)
set path+=**
=======
" showcmd
set showcmd

" cursor line
"set cursorline

" wildmenu
set wildmenu  

" lazy redraw
set lazyredraw

" show match 
set showmatch

" synatx on
syntax enable   

" save session
nnoremap <leader>s : mksession<CR>
>>>>>>> 17a20dda93e6a569d310b57e4193af9cc3789ced

" moving between splits
"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"}}}
"{{{ Keymapping
map <F2> :NERDTreeToggle<CR>
"nnoremap <leader>a : Ag
"nnoremap <space> za
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

" highlight last inserted text
"nnoremap gV `[v`]
"}}}
"{{{ Theming

" ==== Colors and other basic settings
colorscheme gruvbox
"colorscheme badwolf

"set guifont=Monospace\ 10

"set fillchars+=vert:\$
syntax enable

"automatic reload fo vim rc
set background=dark
set ruler
set hidden
"clipboard
set clipboard=unnamed
set mouse=c
set bs=2            "make backspace behave like normal again
set number
set laststatus=2
"set smartindent
"set st=4 sw=4 et
"set shiftwidth=4
set tabstop=2
set softtabstop=2      " number of spaces in tabs
set expandtab          " tabs now are only spaces
let mapleader=","

vmap Q gq
nmap Q gqap
highlight ColorColumn ctermbg=233
let &colorcolumn="80"
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set lines=999 columns=999
"}}}
"{{{ Nerd Tree
" ==== NERDTREE
"let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

"let NERDTreeShowHidden=1
"let g:NERDTreeWinPos="left"
"let g:NERDTreeDirArrows=0
"map <C-t> :NERDTreeToggle<CR>
"}}}
"{{{ Snippets
" ==== snippets
"let g:UltiSnipsExpandTrigger="<A-ENTER>"
"let g:UltiSnipsJumpForwardTrigger="<A-ENTER>"
"let g:UltiSnipsJumpBackwardTrigger="<A-BACKSPACE>"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

"snippets changes
"let g:vimtex_compiler_latexmk={'callback' : 0}
"let g:SuperTabDefaultCompletionType    = '<C-n>'
"let g:SuperTabCrMapping                = 0
"let g:UltiSnipsExpandTrigger           = '<tab>'
"let g:UltiSnipsJumpForwardTrigger      = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
"let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']


"}}}
"{{{ Easy Motion
" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

" ==== moving around
"nmap <silent> <A-Up> :wincmd k<CR>
"nmap <silent> <A-Down> :wincmd j<CR>
"nmap <silent> <A-Left> :wincmd h<CR>
"nmap <silent> <A-Right> :wincmd l<CR>

"}}}
"{{{ Latex Configuration
"tex_flavor
"let g:tex_flavor = 'latex'
"let g:vimtex_complete_enabled = 1
"let g:vimtex_fold_enabled = 1
"let g:vimtex_view_method = 'zathura'
" Recommanded setting for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"}}}
"{{{ YouCompleteMe
"let g:ycm_global_ycm_extra_conf ='~/.vim/.ycm_global_ycm_extra_conf'
"}}}
"{{{ CtlrP
"let g:ctrlp_match_window = 'botom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_commad ='ag %s -l --nocolor --hidden -g ""'
"}}}
"{{{ Airline
":let g:airline_theme='gruvbox'
"}}}
