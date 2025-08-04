local fn = vim.fn

-- Проверяем, установлен ли пакер (менеджер плагинов)
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'      -- Менеджер плагинов

  use 'neovim/nvim-lspconfig'       -- Конфиг для LSP (языков серверов)
  use 'hrsh7th/nvim-cmp'            -- Автодополнение
  use 'hrsh7th/cmp-nvim-lsp'        -- Источник LSP для nvim-cmp
  use 'hrsh7th/cmp-buffer'          -- Источник буфера
  use 'L3MON4D3/LuaSnip'            -- Сниппеты
  use 'saadparwaiz1/cmp_luasnip'    -- Интеграция сниппетов с автодополнением

  -- Добавим LSP сервер для Python
  use 'jose-elias-alvarez/null-ls.nvim' -- Дополнительный LSP функционал

  -- Тема: 
  -- Using Packer:
  use 'Mofiqul/dracula.nvim'

end)

