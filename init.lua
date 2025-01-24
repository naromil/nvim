require('plugins')

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.number = true
-- vim.cmd("colorscheme wildcharm")
-- vim.cmd("colorscheme zaibatsu")
vim.cmd("colorscheme catppuccin")
-- vim.cmd("colorscheme tokyonight-night")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")

vim.api.nvim_create_user_command(
	'CP',
	'w | exec \'!cat % | xclip -selection clipboard\'',
	{ nargs = 0 }
)

vim.api.nvim_create_user_command(
	'BE',
	'w | exec \'vs | terminal g++ -Wall % -o %< && ./%<\'',
	{ nargs = 0 }
)

vim.keymap.set('n', '<F9>', ':BE<CR>i')
vim.keymap.set('t', '<F9>', '<C-\\><C-n>')
