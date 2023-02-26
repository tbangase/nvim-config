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

noremap <silent> ]] ]M
noremap <silent> [[ [M

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nmap <silent> <CR> :CocCommand explorer<CR>

inoremap jj <ESC>
inoremap kk <ESC><RIGHT>a

nnoremap <S-l> ]m
nnoremap <S-h> [m

vmap ( di(jjpF(
vmap { di{jjpF{
vmap [ di[jjpF[

vmap C yV:s/<C-r>"//g<LEFT><LEFT>
vmap S :s/<C-r>"//g<LEFT><LEFT>

" For Flutter
nnoremap <leader>fa :FlutterRun<cr>
" nnoremap <leader>fq :FlutterQuit<cr>
" nnoremap <leader>fr :FlutterHotReload<cr>
" nnoremap <leader>fR :FlutterHotRestart<cr>
" nnoremap <leader>fD :FlutterVisualDebug<cr>
nnoremap <leader>fe :CocCommand flutter.emulators<cr>
nnoremap <leader>fd :below new output:///flutter-dev<cr>

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
noremap <M-C-l> :Wide<CR>
noremap <M-C-h> :Shrink<CR>
noremap <M-C-k> :Shorter<CR>
noremap <M-C-j> :Taller<CR>
noremap <M-p> :Files<CR>

"Using Regular Expression"
nnoremap / /\v
cnoremap %s/ %s/\v

noremap <C-p> :Files<CR>

"For Django Jinja Template"
inoremap {% {%%}<LEFT><LEFT>
