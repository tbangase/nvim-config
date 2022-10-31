call plug#begin('~/.nvim/plugged')
" Make sure you use single quotes
Plug 'jacoborus/tender.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/unite.vim'
Plug 'tpope/vim-fugitive'
Plug 'cespare/vim-toml'
Plug 'kylef/apiblueprint.vim'

Plug 'github/copilot.vim'
Plug 'APZelos/blamer.nvim'
Plug 'guns/xterm-color-table.vim'

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Very cool airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tbangase/preview-markdown.vim'

" KDL syntax
Plug 'imsnif/kdl.vim'

" File Search
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" Setup for flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/dartlang-snippets'
Plug 'reisub0/hot-reload.vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tomlion/vim-solidity'

" Plugins for React
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components'

Plug 'tpope/vim-commentary'

" Plugins for Rust
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'

" Plugins for Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mattreduce/vim-mix'

" Plugins for Testing
Plug 'vim-test/vim-test'

"" Debugging
Plug 'nvim-lua/plenary.nvim'
Plug 'mfussenegger/nvim-dap'

" Plugins for Python
Plug 'neomake/neomake'

" Setup for Debugging
Plug 'puremourning/vimspector'

" Visualize Space Indents
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()
