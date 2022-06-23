call plug#begin()
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/goyo.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'neomake/neomake'
Plug 'rbgrouleff/bclose.vim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/'
Plug 'sebdah/vim-delve'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'git://git.wincent.com/command-t.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons' "icon
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} "https://ianding.io/2019/07/29/configure-coc-nvim-for-c-c++-development/
" Auto Complete
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Language support
Plug 'uarun/vim-protobuf'
Plug 'fatih/vim-go', { 'do': ':silent :oUpdateBinaries' }
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'rust-lang/rust.vim'                      " Rust support
Plug 'racer-rust/vim-racer'                    " Rust plug support
Plug 'vimwiki/vimwiki'
Plug 'pangloss/vim-javascript'                 " JavaScript syntax highlighting
Plug 'mxw/vim-jsx'                             " react support
Plug 'moll/vim-node'                            "node support
Plug 'tpope/vim-jdaddy' "Json text objects
Plug 'tweekmonster/braceless.vim' " text objects and more for Python and other indented code
Plug 'kylef/apiblueprint.vim'                  " API Blueprint syntax highlighting
Plug 'rodjek/vim-puppet'                       " Puppet syntax highlighting
Plug 'scrooloose/syntastic'                    " jsx eslintrc
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
<<<<<<< HEAD
=======
Plug 'codota/tabnine-vim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} "https://ianding.io/2019/07/29/configure-coc-nvim-for-c-c++-development/

>>>>>>> fefd91035f9d0be11f330ff0f37292005f599174
Plug 'cespare/vim-toml' " rust


" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'rakr/vim-one'
Plug 'hashivim/vim-terraform'

call plug#end()

"----------------------------------------------
" eneral settings
"----------------------------------------------"
<<<<<<< HEAD
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"" Â∏∏ËßÑÊ®°Âºè‰∏ãËæìÂÖ• cS Ê∏ÖÈô§Ë°åÂ∞æÁ©∫Ê†º
"nmap cS :%s/\s\+$//g<CR>:noh<CR>
"" " Â∏∏ËßÑÊ®°Âºè‰∏ãËæìÂÖ• cM Ê∏ÖÈô§Ë°åÂ∞æ ^M Á¨¶Âè∑
"nmap cM :%s/\r$//g<CR>:noh<CR>
=======
" √Ç‚àè‚àè√ã√ü√ë√ä¬Æ¬∞√Ç¬∫√®‚Ä∞‚àè√£√Å√Æ¬Æ√Å¬©‚à´√ä‚Ä†¬∫√à√Æ√Ü√ä√π‚Ä¢√Ç¬∫√Ñ√Ç√ñ‚â•√Ç√ñ√¢√ä‚Ä†√°√ã¬∞√•√ä√¢√Ñ√Ç√∫¬Æ√ä√§√≤√Ç√®‚Ä†√î¬∫√†√ä‚â•¬Æ√î¬∫√∂zR √Ç¬±√Ø√Ç¬∫√Ñ√ä√¢√Ñ√ä√∫√¢√ä√§√≤√Ç√®‚Ä†√î¬∫√•zM √Ç√ñ‚â•√à√≥‚â†√ä√¢√Ñ√ä√∫√¢√ä√§√≤√Ç√®‚Ä†√î¬∫√¢
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" √Ç‚àè‚àè√ã√ü√ë√ä¬Æ¬∞√Ç¬∫√®‚Ä∞‚àè√£√ã√¶√¨√Ç√ñ‚Ä¢ cS √ä‚àè√ñ√à√¥¬ß√ã¬∞√•√Ç‚àû√¶√Å¬©‚à´√ä‚Ä†¬∫
nmap cS :%s/\s\+$//g<CR>:noh<CR>
" " √Ç‚àè‚àè√ã√ü√ë√ä¬Æ¬∞√Ç¬∫√®‚Ä∞‚àè√£√ã√¶√¨√Ç√ñ‚Ä¢ cM √ä‚àè√ñ√à√¥¬ß√ã¬∞√•√Ç‚àû√¶ ^M √Å¬®¬∂√Ç√®‚àë
nmap cM :%s/\r$//g<CR>:noh<CR>
>>>>>>> fefd91035f9d0be11f330ff0f37292005f599174

set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamedplus
set colorcolumn=80                " highlight the 80th column as an indicator
set completeopt-=preview          " remove the horrendous preview window
set cursorline                    " highlight the current line for the cursor
set encoding=utf-8
set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:‚ñ´
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set nowrap
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set number                        " show number ruler
set relativenumber                " show relative numbers in the ruler
set ruler
set formatoptions=tcqronj         " set vims text formatting options
set softtabstop=2
set tabstop=2
set title                         " let vim set the terminal title
set nobackup
set nowritebackup
set cmdheight=2                   " Better display for messages
set updatetime=300                " You will have bad experience for diagnostic messages when it's default 4000.
set shortmess+=c                  " don't give |ins-completion-menu| messages.
set signcolumn=yes                " always show signcolumns
set nocompatible              " be iMproved, required
filetype off                  " required
set paste "set nopaste

" Enable mouse if possible
if has('mouse')
set mouse=a
endif

" Allow vim to set a custom font or color for a word
syntax enable

" Set the leader button
let mapleader = ','

" Autosave buffers before leaving them
autocmd BufLeave * silent! :wa

" Remove trailing white spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Center the screen quickly
nnoremap <space> zz

"----------------------------------------------
" Colors
"----------------------------------------------
if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < [https://github.com/neovim/neovim/pull/2198](https://github.com/neovim/neovim/pull/2198) >
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < [https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162](https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162) >
"Based on Vim patch 7.4.1770 (`guicolors` option) < [https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd](https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd) >
" < [https://github.com/neovim/neovim/wiki/Following-HEAD#20160511](https://github.com/neovim/neovim/wiki/Following-HEAD#20160511) >
if (has("termguicolors"))
set termguicolors
endif

set background=dark

" Material colorscheme settings
let g:material_theme_style ='dark'

" Ayu colorscheme settings
let ayucolor = 'dark'

let g:lightline = {
\ 'colorscheme': 'material_vim',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'gitbranch': 'fugitive#head'
\ },
\ }

" One colorscheme settings
let g:one_allow_italics = 1

colorscheme one

" Override the search highlight color with a combination that is easier to
" read. The default PaperColor is dark green backgroun with black foreground.
"
" Reference:
" - [http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim](http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim)
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White

" Toggle background with <leader>bg
map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>

"----------------------------------------------
" Searching
"----------------------------------------------
set incsearch                     " move to match as you type the search query
set hlsearch                      " disable search result highlighting

if has('nvim')
set inccommand=split          " enables interactive search and replace
endif

" Clear search highlights
map <leader>c :nohlsearch<cr>

" These mappings will make it so that going to the next one in a search will
" center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"----------------------------------------------
" Navigation
"----------------------------------------------
"Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Move between buffers with Shift + arrow key...
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>

" ... but skip the quickfix when navigating
augroup qf
autocmd!
autocmd FileType qf set nobuflisted
augroup END

" Fix some common typos
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall


"----------------------------------------------
" Splits
"----------------------------------------------
" Create horizontal splits below the current window
set splitbelow
set splitright

" Creating splits
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>

" Closing splits
nnoremap <leader>q :close<cr>

"----------------------------------------------
" Plugin: Mattesroeger/vim-bookmarks
"----------------------------------------------
" Auto save bookmarks
let g:bookmark_auto_save = 1

" Store the bookmarks in the projects
let g:bookmark_save_per_working_dir = 1

" Disable the default key mappings
let g:bookmark_no_default_key_mappings = 1

" Configure key mappings
" This part also fixes conflicts with NERDTree
function! BookmarkMapKeys()
nmap Mm :BookmarkToggle<cr>
nmap Mi :BookmarkAnnotate<cr>
nmap Mn :BookmarkNext<cr>
nmap Mp :BookmarkPrev<cr>
nmap Ma :BookmarkShowAll<cr>
nmap Mc :BookmarkClear<cr>
nmap Mx :BookmarkClearAll<cr>
nmap Mkk :BookmarkMoveUp
nmap Mjj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
unmap Mm
unmap Mi
unmap Mn
unmap Mp
unmap Ma
unmap Mc
unmap Mx
unmap Mkk
unmap Mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()

"----------------------------------------------
" Show status bar by default.
set laststatus=2

"----------------------------------------------
" Plugin: christoomey/vim-tmux-navigator
"----------------------------------------------
" tmux will send xterm-style keys when its xterm-keys option is on.
if &term =~ '^screen'
execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xRight>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"
endif

" Tmux vim integration
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1

" Move between splits with ctrl+h,j,k,l
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"----------------------------------------------
" Plugin: 'ctrlpvim/ctrlp.vim'
"----------------------------------------------
" Note: We are not using CtrlP much in this configuration. But vim-go depend on
" it to run oDecls(Dir).

" Disable the CtrlP mapping, since we want to use FZF instead for <c-p>.
let g:ctrlp_map = ''

"----------------------------------------------
" Plugin: easymotion/vim-easymotion
"----------------------------------------------
" Enable support for bidirectional motions
map  <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)

"----------------------------------------------
" Plugin: 'itchyny/calendar.vim'
"----------------------------------------------
" Enable oogle Calendar integration.
let g:calendar_google_calendar = 1

" Enable oogle Tasks integration.
let g:calendar_google_task = 1

" Other options
let g:calendar_first_day = "monday"           " Weeks starts with Monday
let g:calendar_date_endian = "big"            " Format: year / month / day
let g:calendar_date_separator = "-"           " Format: year - month - day
let g:calendar_week_number = 1                " Show week numbers
let g:calendar_view = "days"                  " Set days as the default view

"----------------------------------------------
" Plugin: 'majutsushi/tagbar'
"----------------------------------------------
" Add shortcut for toggling the tag bar
nnoremap <F3> :TagbarToggle<cr>

" Language: o
" Tagbar configuration for olang
let g:tagbar_type_go = {
\ 'ctagstype' : 'go',
\ 'kinds'     : [
\ 'p:package',
\ 'i:imports:1',
\ 'c:constants',
\ 'v:variables',
\ 't:types',
\ 'n:interfaces',
\ 'w:fields',
\ 'e:embedded',
\ 'm:methods',
\ 'r:constructor',
\ 'f:functions'
\ ],
\ 'sro' : '.',
\ 'kind2scope' : {
\ 't' : 'ctype',
\ 'n' : 'ntype'
\ },
\ 'scope2kind' : {
\ 'ctype' : 't',
\ 'ntype' : 'n'
\ },
\ 'ctagsbin'  : 'gotags',
\ 'ctagsargs' : '-sort -silent'
\ }

"----------------------------------------------
" Plugin: suan/vim-instant-markdown
"----------------------------------------------
" Disable folding
let g:instant_markdown_autostart = 1
let g:instant_markdown_mathjax = 1
let g:instant_markdown_port = 8888
let g:instant_markdown_autoscroll = 0
"----------------------------------------------
" Plugin: rbgrouleff/bclose.vim
"----------------------------------------------
" Close buffers
nnoremap <leader>w :Bclose<cr>

"----------------------------------------------
" Plugin: neomake/neomake
"----------------------------------------------
" Configure signs.
<<<<<<< HEAD
let g:neomake_error_sign   = {'text': '‚úñ', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '‚àÜ', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '‚û§', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': '‚Ñπ', 'texthl': 'NeomakeInfoSign'}
=======
let g:neomake_error_sign   = {'text': '‚Äö√∫√±', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '‚Äö√†√ú', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '‚Äö√ª¬ß', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign    = {'text': '‚Äö√ëœÄ', 'texthl': 'NeomakeInfoSign'}

"----------------------------------------------
" Plugin: scrooloose/
"----------------------------------------------
nnoremap <leader>d :NERDTreeToggle<cr>
nnoremap <F2> :NERDTreeToggle<cr>

" Files to ignore
let NERDTreeIgnore = [
\ '\~$',
\ '\.pyc$',
\ '^\.DS_Store$',
\ '^node_modules$',
\ '^.ropeproject$',
\ '^**pycache**$'
\]

" Close vim if NERDTree is the only opened window.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files by default.
let NERDTreeShowHidden = 1

" Allow NERDTree to change session root.
let g:NERDTreeChDirMode = 2
>>>>>>> fefd91035f9d0be11f330ff0f37292005f599174

"----------------------------------------------
" Plugin: sebdah/vim-delve
"----------------------------------------------
" Set the Delve backend.
let g:delve_backend = "native"

"----------------------------------------------
" Plugin: Shougo/neosnippet
"----------------------------------------------
" Disable the default snippets (needed since we do not install
" Shougo/neosnippet-snippets).
"
" Below you can disable default snippets for specific languages. If you set the
" language to _ it sets the default for all languages.
let g:neosnippet#disable_runtime_snippets = {
\ 'go': 1
\}

" Keybindings
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" Set the path to our snippets
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'

"----------------------------------------------
" Plugin: vimwiki/vimwiki
"----------------------------------------------
" Path to wiki
let g:vimwiki_list = [{
\ 'path': '~/Dropbox/vimwiki',
\ 'syntax': 'markdown',
\ 'ext': '.vimwiki.markdown'}]

au FileType vimwiki set expandtab
au FileType vimwiki set shiftwidth=2
au FileType vimwiki set softtabstop=2
au FileType vimwiki set tabstop=2

"----------------------------------------------
" Plugin: 'terryma/vim-multiple-cursors'
"----------------------------------------------
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_skip_key='<C-b>'

"----------------------------------------------
" Plugin: zchee/deoplete-go
"----------------------------------------------
" Enable completing of go pointers
let g:deoplete#sources#go#pointer = 1

" Enable autocomplete of unimported packages
let g:deoplete#sources#go#unimported_packages = 1

" When enabled, deoplete-go can complete standard library packages that are not explicitely imported yet.
let g:deoplete#sources#go#fallback_to_source=1

"let g:deoplete#sources#go#builtin_objects

set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect
" Skip the check of neovim module
let g:python3_host_skip_check = 1

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

" Available values are [package, func, type, var, const]. If you did not include any value, it will always be hidden in the completion list.

let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
"
let g:deoplete#sources#go#source_importer = 1

" Automatically insert dot after package name
let g:deoplete#sources#go#package_dot=1

" cgo
let g:deoplete#sources#go#cgo	=1

" Automatically set OOS environment variable when calling gocode
let g:deoplete#sources#go#goos=1

"----------------------------------------------
" Language: golang
"----------------------------------------------
au FileType go set noexpandtab
au FileType go set shiftwidth=2
au FileType go set softtabstop=2
au FileType go set tabstop=2
let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
	        \ 'stack':      'rightbelow 10new',
			\ }
" Mappings
au FileType go nmap <F8> :oMetaLinter<cr>
au FileType go nmap <F9> :oCoverageToggle -short<cr>
au FileType go nmap <F10> :oTest -short<cr>
au FileType go nmap <F12> <Plug>(go-def)
au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <leader>gt :oDeclsDir<cr>
au FileType go nmap <leader>gc <Plug>(go-coverage-toggle)
au FileType go nmap <leader>gd <Plug>(go-def)
au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <leader>gdh <Plug>(go-def-split)
au FileType go nmap <leader>gD <Plug>(go-doc)
au FileType go nmap <leader>gDv <Plug>(go-doc-vertical)

" Run goimports when running gofmt
let g:go_fmt_command = "goimports"

" Set neosnippet as snippet engine
let g:go_snippet_engine = "neosnippet"

" Enable syntax highlighting per default
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

" Show the progress when running :oCoverage
let g:go_echo_command_info = 1

" Show type information
let g:go_auto_type_info = 1
" Highlight variable uses
let g:go_auto_sameids = 1

" Fix for location list when vim-go is used together with Syntastic
let g:go_list_type = "quickfix"

" Add the failing test name to the output of :oTest
let g:go_test_show_name = 1

let g:go_gocode_propose_source=1

" gometalinter configuration
let g:go_metalinter_command = ""
let g:go_metalinter_deadline = "5s"
let g:go_metalinter_enabled = [
\ 'deadcode',
\ 'gas',
\ 'goconst',
\ 'gocyclo',
\ 'golint',
\ 'gosimple',
\ 'ineffassign',
\ 'vet',
\ 'vetshadow'
\]
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
" Set whether the JSON tags should be snakecase or camelcase.
let g:go_addtags_transform = "snakecase"

" neomake configuration for o.
let g:neomake_go_enabled_makers = [ 'go', 'gometalinter' ]
let g:neomake_go_gometalinter_maker = {
\ 'args': [
\   '--tests',
\   '--enable-gc',
\   '--concurrency=3',
\   '--fast',
\   '-D', 'aligncheck',
\   '-D', 'dupl',
\   '-D', 'gocyclo',
\   '-D', 'gotype',
\   '-E', 'misspell',
\   '-E', 'unused',
\   '%:p:h',
\ ],
\ 'append_file': 0,
\ 'errorformat':
\   '%E%f:%l:%c:%trror: %m,' .
\   '%W%f:%l:%c:%tarning: %m,' .
\   '%E%f:%l::%trror: %m,' .
\   '%W%f:%l::%tarning: %m'
\ }
" Error and warning signs.
<<<<<<< HEAD
let g:ale_sign_error = '‚§´'
let g:ale_sign_warning = '‚ö†'" Enable integration with airline.
=======
let g:ale_sign_error = '‚Äö¬ß¬¥'
let g:ale_sign_warning = '‚Äö√∂‚Ä†'" Enable integration with airline.
>>>>>>> fefd91035f9d0be11f330ff0f37292005f599174
let g:airline#extensions#ale#enabled = 1
"----------------------------------------------
" Language: gitcommit
"----------------------------------------------
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80
"----------------------------------------------
" Language: gitconfig
"----------------------------------------------
au FileType gitconfig set noexpandtab
au FileType gitconfig set shiftwidth=2
au FileType gitconfig set softtabstop=2
au FileType gitconfig set tabstop=2

"----------------------------------------------
"" Language: SQL
"----------------------------------------------
au FileType sql set expandtab
au FileType sql set shiftwidth=2
au FileType sql set softtabstop=2
au FileType sql set tabstop=2

"----------------------------------------------
"" Language: Make
"----------------------------------------------
au FileType make set noexpandtab
au FileType make set shiftwidth=2
au FileType make set softtabstop=2
au FileType make set tabstop=2

"----------------------------------------------
"" Language: HTML
"----------------------------------------------
au FileType html set expandtab
au FileType html set shiftwidth=2
au FileType html set softtabstop=2
au FileType html set tabstop=2

""----------------------------------------------
" Language: JavaScript
" "----------------------------------------------
au FileType javascript set expandtab
au FileType javascript set shiftwidth=2
au FileType javascript set softtabstop=2
au FileType javascript set tabstop=2
" vim-jsx
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

" "----------------------------------------------
" " Language: JSON
" "----------------------------------------------
au FileType json set expandtab
au FileType json set shiftwidth=2
au FileType json set softtabstop=2
au FileType json set tabstop=2

" "----------------------------------------------
" " Language: Rust
" "----------------------------------------------

let g:rust_clip_command = 'pbcopy'
let g:rustfmt_autosave = 1
let g:racer_cmd = "<path-to-racer>/target/release/racer"
let $RUST_SRC_PATH="<path-to-rust-srcdir>/src/"
let g:LanguageClient_autoStart = 0
nnoremap <leader>lcs :LanguageClientStart<CR>

" if you want it to turn on automatically
" let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
\ 'python': ['pyls'],
\ 'rust': ['rustup', 'run', 'nightly', 'rls'],
\ 'javascript': ['javascript-typescript-stdio'],
\ 'go': ['go-langserver'] }

noremap <silent> H :call LanguageClient_textDocument_hover()<CR>
noremap <silent> Z :call LanguageClient_textDocument_definition()<CR>
noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
noremap <silent> S :call LanugageClient_textDocument_documentSymbol()<CR>
" }}}
" "----------------------------------------------
" " Syntastic
" "----------------------------------------------
let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_enable_perl_checker = 1
"----------------------------------------------
" " Dash
" "----------------------------------------------
let g:dash_map = {
\ 'java' : ['android', 'java'],
\ 'go': 'go',
\ 'javascript':'js'
\ }
nmap <silent> <LocalLeader>d <Plug>DashSearch
nmap <silent> <LocalLeader>D <Plug>DashlobalSearch

" " vim-autoformat
" "----------------------------------------------
let g:formatdef_eslint = '"SRC=eslint-temp-${RANDOM}.js; cat - >$SRC; eslint --fix $SRC >/dev/null 2>&1; cat $SRC | perl -pe \"chomp if eof\"; rm -f $SRC"'

"" terraform
" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0

let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1

" ===
" === coc
" ===
" fix the most annoying bug that coc has
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-emmet', 'coc-html','coc-go',"coc-rls",'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-omnisharp']
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]	=~ '\s'
endfunction
inoremap <silent><expr> <Tab>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<Tab>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
execute 'h '.expand('<cword>')
else
call CocAction('doHover')
endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
autocmd!
" Setup formatexpr specified filetype(s).
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" Update signature help on jump placeholder
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" Flutter
" Enable Flutter menu
"call FlutterMenu()

" Some of these key choices were arbitrary;
" it's just an example.
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>


" rust ale config
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
<<<<<<< HEAD
let g:ale_sign_error = '✗'
let g:ale_sign_warning = ''
=======
let g:ale_sign_error = '‚úó'
let g:ale_sign_warning = 'ÔÅ±'
>>>>>>> fefd91035f9d0be11f330ff0f37292005f599174
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'rust': ['rustfmt'],
\}
inoremap <silent><expr><TAB>
    \ pumvisible() ? "\<C-n>" : "\<TAB>"

" rust ale config
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
<<<<<<< HEAD
let g:ale_sign_error = '‚úó'
let g:ale_sign_warning = 'ÔÅ±'
=======
let g:ale_sign_error = '‚Äö√∫√≥'
let g:ale_sign_warning = '√î√Ö¬±'
>>>>>>> fefd91035f9d0be11f330ff0f37292005f599174
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'rust': ['rustfmt'],
\}
inoremap <silent><expr><TAB>
    \ pumvisible() ? "\<C-n>" : "\<TAB>"


" rust key mappings
nmap <silent> <F11> <Plug>(ale_previous_wrap)
nmap <silent> <F23> <Plug>(ale_next_wrap)
nmap <silent> <F12> :ALEGoToDefinition<CR>
nmap <silent> <F24> :ALEFindReferences<CR>
map <leader>s :Ag<space>
"nmap <silent> <YOUR PREFERRED KEY HERE> :ALEGoToDefinition<CR>
"nmap <silent> <YOUR PREFERRED KEY HERE> :ALEFindReferences<CR>
"nmap <silent> <YOUR PREFERRED KEY HERE> <Plug>(ale_previous_wrap)
"nmap <silent> <YOUR PREFERRED KEY HERE> <Plug>(ale_next_wrap)
"
<<<<<<< HEAD

" markdown
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle


"----------------------------------------------
" Plugin: nerdtree/
"----------------------------------------------
nnoremap <F2> :NERDTreeToggle<cr>

"" Files to ignore

" Close vim if NERDTree is the only opened window.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files by default.
let NERDTreeShowHidden = 1

" Allow NERDTree to change session root.
let g:NERDTreeChDirMode = 2
=======
" neovide
let g:neovide_refresh_rate=140
let g:neovide_transparency=0.8
let g:neovide_no_idle=v:true
let neovide_remember_window_size = v:true
let g:neovide_cursor_vfx_mode = "torpedo"
>>>>>>> fefd91035f9d0be11f330ff0f37292005f599174
