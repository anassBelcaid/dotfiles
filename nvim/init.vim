"{{{ Plugings
" Plugins will be downloaded under the specified directory.
 call plug#begin('~/.vim/plugged')
"{{{Languages
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sbdchd/vim-run'
Plug 'jceb/vim-orgmode'
Plug 'itchyny/calendar.vim'
Plug 'vimwiki/vimwiki'
" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
" " JSON front matter highlight plugin
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"}}}
"{{{ Navigation
"{{{ NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-commentary'
"}}}
"}}}
 "{{{ Conqueror of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
 "}}}
 "{{{Looks
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'tpope/vim-surround'
" Plug 'tmhedberg/SimpylFold'
 "}}}
 call plug#end()
"}}}
"{{{ General setup
syntax on
filetype plugin indent on

"transparent
" no autoclose
let g:AutoPairs = {}
" Backup, swap
set noswapfile
set nobackup
set undofile
set incsearch

set textwidth=80
set wrap
set linebreak

set undolevels=1000
set undoreload=10000

" Indentation
set softtabstop=2
set shiftwidth=2
set expandtab
set tabstop=2        " number of visual spaces per TAB
set copyindent
set preserveindent
silent! set breakindent

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
"{{{folding
" let g:SimplyFold_docstring_preview=0
" " folding method
" set foldmethod=marker
" set foldlevelstart=0           " starting level
" set foldcolumn=0


" moving between splits
"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Buffer navigation
nnoremap <silent> gb :bnext<cr>
nnoremap <silent> gB :bprevious<cr>



" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" releaving ^and $
nnoremap $ <nop>
nnoremap $ <nop>

"map leader
map <SPACE> <leader>

"}}}
"{{{ Conquer  of Completion
"Suggestion on insert mode
"let suggest.triggerAfterInsertEnter": true
" coc config
let g:coc_global_extensions = [
   \ 'coc-snippets',
       \ 'coc-tsserver',
         \ 'coc-eslint', 
           \ 'coc-prettier', 
             \ 'coc-python', 
               \ ]
inoremap <silent><expr> <c-space> coc#refresh()

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
"
 function! s:show_documentation()
   if (index(['vim','help'], &filetype) >= 0)
       execute 'h '.expand('<cword>')
         else
             call CocAction('doHover')
               endif
               endfunction
"}}}
"{{{ Looks
"{{{ Colors Schemes
"Should be in its own file
"I want itatlic
let g:gruvbox_italic=1
 " colorscheme gruvbox 
 colorscheme jellybeans
" hi Normal guibg=NONE ctermbg=NONE
"}}}
"{{{ vim air line
"show all the files
let g:airline#extensions#tabline#enabled = 1
"separator
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"}}}
"{{{ Goyo and Limelight
"color name (:help cterm-colors) or ANSI code
" let g:limelight_conceal_ctermfg = 'gray'
" let g:limelight_conceal_ctermfg = 240
"
" " Default: 0.5
" let g:limelight_default_coefficient = 0.7

" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!
"}}}
"
"{{{ Markdown
" disable header folding
let g:vim_markdown_folding_disabled = 1
"
" " do not use conceal feature, the implementation is not so good
 let g:vim_markdown_conceal = 1
"
" " disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1
"
" " support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" open with markdown pandoc
augroup pandoc_syntax
	    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END


" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0
nnoremap <M-m> :MarkdownPreview<CR>

"}}}
"{{{ Nerd Tree
inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusWithFlags = 1

"ignore some predifined files
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
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
inoremap <C-Space> <C-x><C-o>
let g:Tex_IgnoredWarnings = 
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'There were undefined references'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n"
let g:Tex_IgnoreLevel = 8

let g:vimtex_quickfix_mode =  0
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
"{{{  org-mode
let g:org_agneda_files=['/home/anass/Dropbox/org/00_tasks.org']
"}}}
"{{{ vimwiki  
let science_wiki = {}
let science_wiki.path =  '~/github/anass/vimwiki/science'
let science_wiki.syntax = 'markdown'
let linux_wiki = {}
let linux_wiki.path =  '~/github/anass/vimwiki/linux'
let linux_wiki.syntax = 'markdown'
let lang_wiki = {}
let lang_wiki.path =  '~/github/anass/vimwiki/programming_languages'
let lang_wiki.syntax = 'markdown'
let g:vimwiki_list = [science_wiki, linux_wiki, lang_wiki]
let g:vimwiki_listsyms = '✗○◐●✓'
"}}}
"
