call plug#begin('~/.nvim/plugged')
" Make sure you use single quotes

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" Setting for NeoSnippets
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'kylef/apiblueprint.vim'

" Setting for LanguageClient-neovim
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" Initialize plugin system
call plug#end()

autocmd QuickFixCmdpost *grep* cwindow

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree

map <C-n> :NERDTreeToggle<CR>

set statusline+=%{fugitive#statusline()}

" let g:neosnippet#snippets_directory='~/.config/nvim/Neosnippets'

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" LanguageClient Setting
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rust-analyzer'],
    \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


" タイトルを表示
set title
set ttyfast
" set pumblend=10
colorscheme hybrid
" 検索文字列が小文字の場合は大文字小文字の区別なく検索する"
set ignorecase
" 行番号を表示
set number
set ruler
set mouse=a
set nowrap
"set ttymouse=xterm2
set tabstop=2
set shiftwidth=2
" set expandtab
set autoindent
set virtualedit=block
set backspace=indent,eol,start
set wildmenu
set cursorline
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
inoremap { {}<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap <<Space> <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

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

