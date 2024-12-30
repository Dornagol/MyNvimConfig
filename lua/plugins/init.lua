return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
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
      default_map = true, -- Default mapping <F1> in normal mode.
      auto_update = true, -- Update header when saving.
      user = "hfeufeu", -- Your user.
      mail = "feufeuhugo@gmail.com", -- Your mail.
      -- add other options.
    },
    config = function(_, opts)
      require("42header").setup(opts)
    end,
  },
}
