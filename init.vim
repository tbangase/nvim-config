call plug#begin('~/.nvim/plugged')
" Make sure you use single quotes

Plug 'jacoborus/tender.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/unite.vim'
Plug 'tpope/vim-fugitive'
Plug 'cespare/vim-toml'
" Setting for NeoSnippets
""if has('nvim')
""  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
""else
""  Plug 'Shougo/deoplete.nvim'
""  Plug 'roxma/nvim-yarp'
""  Plug 'roxma/vim-hug-neovim-rpc'
""endif
""let g:deoplete#enable_at_startup = 1

""Plug 'Shougo/neosnippet.vim'
""Plug 'Shougo/neosnippet-snippets'
Plug 'kylef/apiblueprint.vim'

Plug 'github/copilot.vim'

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" Very cool airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Setup for flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/dartlang-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()


autocmd QuickFixCmdpost *grep* cwindow

autocmd vimenter * CocCommand explorer --width 30
autocmd StdinReadPre * let s:std_in=1
"autocmd vimenter * CocDiagnostics

set statusline+=%{fugitive#statusline()}

" let g:neosnippet#snippets_directory='~/.config/nvim/Neosnippets'

""imap <C-k> <Plug>(neosnippet_expand_or_jump)
""smap <C-k> <Plug>(neosnippet_expand_or_jump)
""xmap <C-k> <Plug>(neosnippet_expand_target)

" LanguageClient Setting
" Required for operations modifying multiple buffers like rename.
set hidden

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-rust-analyzer',
  \ ]

let g:airline_theme = 'tender'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if (has("termguicolors"))
 set termguicolors
endif

"Key mappings"

map <silent> <C-n> :CocCommand explorer<CR>

map <silent> gd <Plug>(coc-definition)
map <silent> gr <Plug>(coc-reference)
map <silent> [g <Plug>(coc-diagnostic-prev)
map <silent> ]g <Plug>(coc-diagnostic-prev)
map <silent> ga <Plug>(coc-codeaction)

nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" タイトルを表示
set title
set ttyfast
" set pumblend=10
syntax enable
colorscheme tender
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
set expandtab
set autoindent
set virtualedit=block
set backspace=indent,eol,start
set wildmenu
set cursorline
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
inoremap { {}<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap <<Space> <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap <C-h> <esc>vb
inoremap <C-l> <esc>ve
tnoremap <esc> <C-\><C-n>

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

