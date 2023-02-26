vim.cmd("source ~/.config/nvim/plugins.vim")
vim.cmd("execute pathogen#infect()")


vim.cmd("source ~/.config/nvim/fzf.vim")
vim.cmd("source ~/.config/nvim/functions.vim")
vim.cmd("source ~/.config/nvim/plugin_settings.vim")
vim.cmd("source ~/.config/nvim/keymaps.vim")

require("autocmd")
require("colorscheme")

local options = {
	title = true,
	ttyfast = true,
	ignorecase = true,
	number = true,
	relativenumber = true,
	ruler = true,
	ruler = true,
	mouse = "a",
	tabstop = 2,
	shiftwidth = 2,
	autoindent = true,
	whichwrap = "b,s,<,>,[,],h,l",
	wfh = true,
	foldmethod = "indent",
	laststatus = 2,
}

for k, val in pairs(options) do
	vim.opt[k] = val
end

vim.wo.wrap = false

vim.opt.clipboard:append {"unnamed"}
vim.opt.statusline = vim.o.statusline .. "%{fugitive#statusline()}"
vim.opt.statusline = vim.o.statusline .. "%{matchstr(hostname(),'\\w\\+')}@"
vim.opt.statusline = vim.o.statusline .. "%<%F"
vim.opt.statusline = vim.o.statusline .. "[%{&fileformat}]"
vim.opt.statusline = vim.o.statusline .. "%y"
vim.opt.path = vim.o.path .. "$PWD/**"

