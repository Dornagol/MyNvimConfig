vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)
require("oil").setup()
require("toggleterm").setup{
  -- Configuration optionnelle ici
  open_mapping = [[<C-/>]],  -- On assigne <Ctrl+/> pour ouvrir ToggleTerm
  start_in_insert = true     -- Démarre en mode INSERT
}
-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "c",  "h" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_set_keymap('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true })
vim.o.expandtab = false -- Utiliser des tabulations au lieu d'espaces
vim.o.tabstop = 4       -- Largeur d'une tabulation
vim.o.shiftwidth = 4    -- Largeur d'une indentation
vim.o.softtabstop = 4   -- Largeur d'une tabulation lors de l'édition
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.schedule(function()
  require "mappings"
end)
