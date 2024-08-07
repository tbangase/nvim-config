local autocmd = vim.api.nvim_create_autocmd

autocmd("QuickFixCmdPost", {
	pattern="*grep*", 
	command="cwindow",
})
autocmd("vimenter", {
	pattern="*", 
	command="CocCommand explorer --width 30",
})
autocmd("StdinReadPre", {
	pattern="*", 
	command="let s:std_in=1",
})
autocmd("vimenter", {
	pattern="*", 
	command="command DisplayComma set conceallevel=0",
})
-- autocmd FileType apache setlocal commentstring=#\ %s
autocmd("FileType", {
  pattern="typescriptreact", 
  command="setlocal commentstring=//\\ %s",
})

-- autocmd("BufWritePre", {
--   pattern="*", 
--   command="lua vim.lsp.buf.format()",
-- })
