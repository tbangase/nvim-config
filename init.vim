" Load Plugin config
source ~/.config/nvim/plugins.vim

" Load Pathogen
" ( It might be better to use vim-plug instead of pathogen )
execute pathogen#infect()

" Load FZF config
source ~/.config/nvim/fzf.vim

autocmd QuickFixCmdpost *grep* cwindow

autocmd vimenter * CocCommand explorer --width 30
autocmd StdinReadPre * let s:std_in=1

" Load custom functions
" Make sure to put this after all plugins are loaded
" Make sure to put this before settings of key bindings
source ~/.config/nvim/functions.vim

autocmd vimenter * command DisplayComma set conceallevel=0

autocmd! BufEnter,BufWritePost * Neomake

set statusline+=%{fugitive#statusline()}

" Required for operations modifying multiple buffers like rename.
set hidden

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-explorer',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-html',
  \ 'coc-rust-analyzer',
  \ 'coc-sourcekit',
  \ 'coc-jedi',
  \ 'coc-prettier',
  \ ]
"  \ 'coc-solidity',

let g:airline_theme = 'tender'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:neomake_python_enabled_makers = ['python', 'flake8', 'mypy']

" let g:blamer_template = '<committer>, <committer-time> • <summary> [ <commit-short> ]'
let g:blamer_date_format = '%Y-%m-%d %H:%M'

if (has("termguicolors"))
 set termguicolors
endif

autocmd FileType denite call s:denite_my_settings()
	function! s:denite_my_settings() abort
	  nnoremap <silent><buffer><expr> <CR>
	  \ denite#do_map('do_action')
	  nnoremap <silent><buffer><expr> d
	  \ denite#do_map('do_action', 'delete')
	  nnoremap <silent><buffer><expr> p
	  \ denite#do_map('do_action', 'preview')
	  nnoremap <silent><buffer><expr> q
	  \ denite#do_map('quit')
	  nnoremap <silent><buffer><expr> i
	  \ denite#do_map('open_filter_buffer')
	  nnoremap <silent><buffer><expr> <Space>
	  \ denite#do_map('toggle_select').'j'
	endfunction

" Settings for Debugging - Vimspector
let mapleader = " " 
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>vl :call vimspector#Launch()<CR>
nmap <leader>vx :VimspectorReset<CR>
nmap <leader>ve :VimspectorEval<CR>
nmap <leader>vw :VimspectorWatch<CR>
nmap <leader>vo :VimspectorShowOutput<CR>
nmap <leader>bb :call vimspector#ToggleBreakpoint()<CR>
nmap <leader>bad :call vimspector#ClearBreakpoints()<CR>
nmap <leader>n  :call vimspector#StepOver()<CR>
nmap <leader>i  :call vimspector#StepInto()<CR>
nmap <leader>o  :call vimspector#StepOut()<CR>
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB', 'debugger-for-chrome' ]

"Key mappings"
map <silent> <C-m> :CocCommand explorer<CR>

map <silent> gd <Plug>(coc-definition)
map <silent> gt <Plug>(coc-type-definition)
map <silent> gi <Plug>(coc-implementation)
map <silent> gr <Plug>(coc-references)
map <silent> [g <Plug>(coc-diagnostic-next)
map <silent> ]g <Plug>(coc-diagnostic-prev)
map <silent> ga <Plug>(coc-codeaction)
nmap <silent> gn <Plug>(coc-diagnostic-next)
nmap <silent> gp <Plug>(coc-diagnostic-prev)

nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nmap <silent> <CR> :CocCommand explorer<CR>

inoremap jj <ESC>
inoremap kk <ESC><RIGHT>a

nnoremap <S-l> ]m
nnoremap <S-h> [m

" For Flutter
nnoremap <leader>fa :FlutterRun<cr>
" nnoremap <leader>fq :FlutterQuit<cr>
" nnoremap <leader>fr :FlutterHotReload<cr>
" nnoremap <leader>fR :FlutterHotRestart<cr>
" nnoremap <leader>fD :FlutterVisualDebug<cr>
nnoremap <leader>fe :CocCommand flutter.emulators<cr>
nnoremap <leader>fd :below new output:///flutter-dev<cr>

let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length=120']

" Custom settings
command! -nargs=0 Format :call CocActionAsync('format')

" IndentLine Settings
" Colors
let g:indentLine_color_term = 244
let g:indentLine_color_gui = '#808080'
"let g:indentLine_defaultGroup = 'WarningMsg'

" Set Markdown parser
let g:preview_markdown_parser = 'glow'

"タイトルを表示
set title
set ttyfast
" set pumblend=10
syntax enable
autocmd ColorScheme * highlight LineNr ctermfg=37 guifg=#00afaf 
autocmd ColorScheme * highlight Comment ctermfg=249 guifg=#b2b2b2
colorscheme tender

highlight Normal ctermbg=none guibg = none
highlight NonText ctermbg=none guibg = none
highlight LineNr ctermbg=none guibg = none
highlight CursorLine ctermbg=none guibg = none
highlight SignColumn ctermbg=none guibg = none
highlight Folded ctermbg=none guibg = none
highlight VertSplit ctermbg=none guibg = none
highlight EndOfBuffer ctermbg=none  guibg = none

" 検索文字列が小文字の場合は大文字小文字の区別なく検索する"
set ignorecase
" 行番号を表示
set number
set relativenumber
set ruler
set mouse=a
set nowrap
"set ttymouse=xterm2
set tabstop=2
set shiftwidth=2
set autoindent
set virtualedit=block
set backspace=indent,eol,start
set wildmenu
set cursorline
set expandtab
"set noexpandtab
" 括弧入力時の対応する括弧を表示
set showmatch
set matchtime=1
set laststatus=2
set whichwrap=h,l,b,s,<,>,[,]
set incsearch
set statusline+=%{matchstr(hostname(),'\\w\\+')}@
set statusline+=%<%F
set statusline+=[%{&fileformat}]
set statusline+=%y
set clipboard+=unnamed
set printoptions=number:y
set path+=$PWD/**

set list
set listchars=tab:>-

set foldmethod=indent
set nofixeol noeol

inoremap { {}<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap <> <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap <C-h> <esc>vb
inoremap <C-l> <esc>ve
tnoremap <esc> <C-\><C-n>
nnoremap <S-e> $
noremap <M-l> :Wide<CR>
noremap <M-h> :Shrink<CR>
noremap <M-p> :Files<CR>

"Using Regular Expression"
nnoremap / /\v
cnoremap %s/ %s/\v

noremap <C-p> :Files<CR>

"For Django Jinja Template"
inoremap {% {%%}<LEFT><LEFT>