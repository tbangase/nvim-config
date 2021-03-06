call plug#begin('~/.nvim/plugged')
" Make sure you use single quotes

Plug 'jacoborus/tender.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/unite.vim'
Plug 'tpope/vim-fugitive'
Plug 'cespare/vim-toml'

Plug 'kylef/apiblueprint.vim'

Plug 'github/copilot.vim'
Plug 'guns/xterm-color-table.vim'

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
Plug 'tomlion/vim-solidity'

" Plugin for React
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Plugin for Python
Plug 'neomake/neomake'

" Setup for Debugging
Plug 'puremourning/vimspector'

" Visualize Space Indents
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()


autocmd QuickFixCmdpost *grep* cwindow

autocmd vimenter * CocCommand explorer --width 30
autocmd StdinReadPre * let s:std_in=1

function InitWorkspace()
  winc h
  IndentLinesDisable
  winc l
  CocDiagnostics
  vs
  te
  IndentLinesDisable
  winc h
endfunction

autocmd vimenter * command InitWorkspace call InitWorkspace()
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
  \ ]
"  \ 'coc-solidity',

let g:airline_theme = 'tender'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:neomake_python_enabled_makers = ['python', 'flake8', 'mypy']

if (has("termguicolors"))
 set termguicolors
endif

" Settings for Debugging - Vimspector
let mapleader = " " 
let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>vl :call vimspector#Launch()<CR>
nmap <leader>vx :VimspectorReset<CR>
nmap <leader>ve :VimspectorEval
nmap <leader>vw :VimspectorWatch
nmap <leader>vo :VimspectorShowOutput
nmap <leader>bb :call vimspector#ToggleBreakpoint()<CR>
nmap <leader>bad :call vimspector#ClearBreakpoints()<CR>
nmap <leader>n  :call vimspector#StepOver()<CR>
nmap <leader>i  :call vimspector#StepInto()<CR>
nmap <leader>o  :call vimspector#StepOut()<CR>
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]

"Key mappings"
map <silent> <C-m> :CocCommand explorer<CR>

map <silent> gd <Plug>(coc-definition)
map <silent> gt <Plug>(coc-type-definition)
map <silent> gi <Plug>(coc-implementation)
map <silent> gr <Plug>(coc-references)
map <silent> [g <Plug>(coc-diagnostic-next)
map <silent> ]g <Plug>(coc-diagnostic-prev)
map <silent> ga <Plug>(coc-codeaction)

nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

inoremap jj <ESC>
inoremap kk <ESC><RIGHT>a

" Custom settings
command! -nargs=0 Format :call CocAction('format')

" IndentLine Settings
" Colors
let g:indentLine_color_term = 244
let g:indentLine_color_gui = '#808080'
"let g:indentLine_defaultGroup = 'WarningMsg'


"?????????????????????
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

" ????????????????????????????????????????????????????????????????????????????????????"
set ignorecase
" ??????????????????
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
" ?????????????????????????????????????????????
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

set list
set listchars=tab:>-

set foldmethod=indent

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

"Using Regular Expression"
nnoremap / /\v
cnoremap %s/ %s/\v

"For Django Jinja Template"
inoremap {% {%%}<LEFT><LEFT>


