"{{{ Plugins.
 call plug#begin('~/.vim/plugged')
"{{{Languages
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
Plug 'tools-life/taskwiki'
Plug 'blindFS/vim-taskwarrior'
Plug 'jceb/vim-orgmode'
Plug 'cdelledonne/vim-cmake'
Plug 'itchyny/calendar.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'sbdchd/vim-run'
Plug 'jceb/vim-orgmode'
Plug 'voldikss/vim-floaterm'
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
"{{{ Telescope
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"}}}
"}}}
 "{{{ Conqueror of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
 "}}}
 "{{{Looks
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'ap/vim-css-color'
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



" Scrolling
set scrolloff=8
set signcolumn=yes  "Column for signs
set colorcolumn=80  " no more than 80 char 



set textwidth=80
set nowrap
set linebreak

set undolevels=1000
set undoreload=10000

" numbering 
set relativenumber

"folding method
set foldmethod=marker

" Highlight
set nohlsearch


"Hidden
set hidden

" Clipboard
set clipboard=unnamedplus

" Indentation
set softtabstop=4
set shiftwidth=4
set expandtab
set tabstop=4        " number of visual spaces per TAB
set smartindent


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


"}}}
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
"" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
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
 " colorscheme jellybeans
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
" colorscheme ayu
colorscheme gruvbox
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
"{{{ Easy Motion
" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)
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
let g:org_agenda_files=['/home/anass/Dropbox/org/00_tasks.org']
"}}}
"{{{ vimwiki  
"Default wiki with markdown syntax
let g:vimwiki_list = [{'path':'/home/anass/github/anass/wiki', 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_ext2syntax= {'.md':'markdown', ".markdown":'markdown',".mdown":'markdown'}


" folding
let g:vimwiki_folding = 'expr'


"Turn vimwiki link extension
let g:vimwiki_markdown_link_ext = 1

"Turn off vimwiki for global markdown files
let g:vimwiki_global_ext = 0


" Mapping for create entry
let g:vimwiki_use_calendar=1
"
" Symbols for tasks
" let g:vimwiki_listsyms = '✗○◐●✓'
"}}}
" task wiki {{{ "
let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1
" }}} task wiki "
"}}}
"{{{floatterm
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_toggle = '<Leader>t'
"}}}
"{{{ remaps
"{{{ Floatterminal
nmap <c-t> :FloatermNew ranger<cr>
nmap <c-b> :FloatermNew --autoclose=0 g++ % -o %< && ./%<<cr>
:tnoremap <Esc> <C-\><C-n>
"}}}

"{{{ Cmake-vim
nmap <leader>cg :CMakeGenerate<cr>
nmap <leader>cb :CMakeGenerate<cr>
"}}}
"{{{ Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"}}}
