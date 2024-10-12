-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.expandtab = false  -- Utiliser des tabulations au lieu d'espaces
vim.o.tabstop = 4        -- Largeur d'une tabulation
vim.o.shiftwidth = 4     -- Largeur d'une indentation
vim.o.softtabstop = 4    -- Largeur d'une tabulation lors de l'édition

vim.cmd([[
inoremap <F1> <C-P>
]])
