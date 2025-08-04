local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Сохранить файл Ctrl+s
map('n', '<C-s>', ':w<CR>', opts)

-- Создание и закрытие окна
map('n', '<Leader>q', ':q<CR>', opts)

