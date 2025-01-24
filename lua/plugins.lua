require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end
	}
	use 'neovim/nvim-lspconfig'
	use 'catppuccin/nvim'
	use 'folke/tokyonight.nvim'
	use 'sphamba/smear-cursor.nvim'
end)

require('nvim-treesitter.configs').setup({
	-- auto_install = true,
	highlight = {
		enable = true
	}
})

require('smear_cursor').toggle()

require('smear_cursor').setup({
	cursor_color = "#00ff00",
	legacy_computing_symbols_support = true
})

