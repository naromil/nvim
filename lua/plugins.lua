require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	use 'catppuccin/nvim'
	use 'folke/tokyonight.nvim'
--	use 'sphamba/smear-cursor.nvim'
end)

local status, tmp = pcall(require, "nvim-treesitter")

if status == false then
	require('packer').sync()
end

require('nvim-treesitter.configs').setup({
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "cpp", "bash", "gitcommit" },
	sync_install = true,
	highlight = {
		enable = true
	}
})

-- require('smear_cursor').toggle()
-- require('smear_cursor').setup({
-- 	-- cursor_color = "#00ff00",
-- 	legacy_computing_symbols_support = true
-- })

