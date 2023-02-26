" Make Load Plugin config
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

" Plugin settings
source ~/.config/nvim/plugin_settings.vim

" Key mappings
source ~/.config/nvim/keymaps.vim

" Custom settings
command! -nargs=0 Format :call CocActionAsync('format')

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
set wfh

set list
set listchars=tab:>-

set foldmethod=indent
set nofixeol noeol
