-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("oil").setup()
require("nordic").setup({
	transparent = {
		bg = false,
		float = false,
	},
})
require("transparent").setup({
	-- table: default groups
	groups = {
		'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
		'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
		'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
		'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
		'EndOfBuffer',
	},
	-- table: additional groups that should be cleared
	extra_groups = {},
	-- table: groups you don't want to clear
	exclude_groups = {},
	-- function: code to be executed after highlight groups are cleared
	-- Also the user event "TransparentClear" will be triggered
	on_clear = function() end,
})

vim.o.expandtab = false -- Utiliser des tabulations au lieu d'espaces
vim.o.tabstop = 4       -- Largeur d'une tabulation
vim.o.shiftwidth = 4    -- Largeur d'une indentation
vim.o.softtabstop = 4   -- Largeur d'une tabulation lors de l'édition
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.cmd([[
:colorscheme nordic
inoremap <F1> <C-P>
]])
