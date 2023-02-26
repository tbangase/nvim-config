
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
  \ '@yaegassy/coc-tailwindcss3',
  \ ]
  " \ 'coc-elixir',
  " \ 'coc-solidity',

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

let g:dart_format_on_save = 1
let g:dartfmt_options = ['--fix', '--line-length=80']

" IndentLine Settings
" Colors
let g:indentLine_color_term = 244
let g:indentLine_color_gui = '#808080'
"let g:indentLine_defaultGroup = 'WarningMsg'

" Set Markdown parser
let g:preview_markdown_parser = 'glow'
