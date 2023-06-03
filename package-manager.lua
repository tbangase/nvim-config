vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
  use 'wbthomason/packer.nvim'

	use 'neovim/nvim-lspconfig'
	use "lukas-reineke/lsp-format.nvim"

	-- Flutter
	use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
	}

	-- Haskell
	use {
	  'mrcjkb/haskell-tools.nvim',
	  requires = {
	    'nvim-lua/plenary.nvim',
	    'nvim-telescope/telescope.nvim', -- optional
	  },
	  branch = '1.x.x', -- recommended
	}
end)
