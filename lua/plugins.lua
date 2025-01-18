require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'neovim/nvim-lspconfig'
	-- use 'echasnovski/mini.animate'
	use 'catppuccin/nvim'
end)

require('nvim-treesitter.configs').setup({
	-- auto_install = true,
	highlight = {
		enable = true
	},
	indent = {
		enable = true
	}
})
