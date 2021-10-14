if &compatible
  set nocompatible " Be iMproved
endif

" Required:
" Add the dein installation directory into runtimepath
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/.config/nvim')
" set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(s:dein_dir)
" Let dein manage dein
call dein#add(s:dein_repo_dir)
call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
		
" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
		
" Required:
call dein#end()


" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" タイトルを表示
set title
set ttyfast
set pumblend=10
colorscheme hybrid
" 検索文字列が小文字の場合は大文字小文字の区別なく検索する"
set ignorecase
" 行番号を表示
set number
set ruler
set mouse=a
"set ttymouse=xterm2
set tabstop=2
set shiftwidth=2
" set expandtab
set autoindent
set virtualedit=block
set backspace=indent,eol,start
set wildmenu
" 括弧入力時の対応する括弧を表示
set showmatch
set matchtime=1
set laststatus=2
set whichwrap=b,s,<,>,[,]
set incsearch
set statusline+=%{matchstr(hostname(),'\\w\\+')}@
set statusline+=%<%F
set statusline+=[%{&fileformat}]
set statusline+=%y
set clipboard+=unnamed
set printoptions=number:y
inoremap {<Space> {}<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Space> []<LEFT>
inoremap (<Space> ()<LEFT>
inoremap <<Space> <><LEFT>
inoremap "<Space> ""<LEFT>
inoremap '<Space> ''<LEFT>

"For HTML
"inoremap a<Enter> <a></a><LEFT><LEFT><LEFT><LEFT>
"inoremap p<Enter> <p></p><LEFT><LEFT><LEFT><LEFT>
"inoremap h1<Enter> <h1></h1><LEFT><LEFT><LEFT><LEFT><LEFT>
"inoremap h2<Enter> <h2></h2><LEFT><LEFT><LEFT><LEFT><LEFT>
"inoremap h3<Enter> <h3></h3><LEFT><LEFT><LEFT><LEFT><LEFT>
"inoremap li<Enter> <li></li><LEFT><LEFT><LEFT><LEFT><LEFT>
"inoremap ul<Enter> <ul></ul><LEFT><LEFT><LEFT><LEFT><LEFT>
"inoremap div<Enter> <div></div><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

"For Django"
inoremap {% {%%}<LEFT><LEFT>

