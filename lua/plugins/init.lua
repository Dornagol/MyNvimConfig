return {
	{
		"stevearc/conform.nvim",
		opts = require "configs.conform",
	},

	{
		"rcarriga/nvim-notify",
		enabled = false
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
		require "configs.lspconfig"
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim", "lua", "vimdoc",
				"html", "css"
			},
		},
	},

	{
		'tribela/transparent.nvim',
		event = 'VimEnter',
		config = true,
	},

	{
		"Diogo-ss/42-header.nvim",
		cmd = { "Stdheader" },
		keys = { "<F1>" },
		opts = {
			default_map = true,
			auto_update = true,
			user = "hfeufeu",
			mail = "feufeuhugo@gmail.com",
		},
	},
}
