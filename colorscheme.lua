local autocmd = vim.api.nvim_create_autocmd

autocmd("ColorScheme", {
	pattern="*", 
	command="highlight LineNr ctermfg=37 guifg=#00afaf",
})
autocmd("ColorScheme", {
	pattern="*", 
	command="highlight Comment ctermfg=249 guifg=#b2b2b2",
})

vim.cmd("colorscheme tender")
vim.cmd("hi Normal guibg=none ctermbg=none")
vim.cmd("hi NonText guibg=none ctermbg=none")
vim.cmd("hi LineNr guibg=none ctermbg=none")
vim.cmd("hi CursorLine guibg=#50001a ctermbg=53")
vim.cmd("hi SignColumn guibg=none ctermbg=none")
vim.cmd("hi Folded guibg=none ctermbg=none")
vim.cmd("hi VertSplit guibg=none ctermbg=none")
vim.cmd("hi EndOfBuffer guibg=none ctermbg=none")

-- hi Normal ctermbg=none guibg = none
-- hi NonText ctermbg=none guibg = none
-- hi LineNr ctermbg=none guibg = none
-- hi CursorLine ctermbg=none guibg = none
-- hi SignColumn ctermbg=none guibg = none
-- hi Folded ctermbg=none guibg = none
-- hi VertSplit ctermbg=none guibg = none
-- hi EndOfBuffer ctermbg=none  guibg = none
