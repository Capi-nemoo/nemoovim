-- lua/user/plugins/init.lua

-- Load and initialize packer
vim.cmd [[packadd packer.nvim]]
local packer = require('packer')
-- lua/user/plugins/init.lua

-- Asegúrate de que packer esté cargado
vim.cmd [[packadd packer.nvim]]
local packer = require('packer')

packer.startup(function()
  -- Packer se gestiona a sí mismo
  use 'wbthomason/packer.nvim'

  -- Tema Gruvbox optimizado para Neovim
  use {
    'sainnhe/gruvbox-material',
    config = function()
      require('user.core.colorscheme')  -- Carga la configuración del tema
    end
  }

  -- Treesitter para resaltado de sintaxis avanzado
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',  -- Actualiza los parsers después de la instalación
    config = function()
      require('user.plugins.treesitter')  -- Carga la configuración de Treesitter
    end
  }
	
  -- Explorador de archivos
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' }, -- Iconos opcionales para archivos
    config = function()
      require('user.plugins.nvim-tree')  -- Cargar la configuración de nvim-tree
    end
  }

    -- Barra de estado personalizada
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- Iconos opcionales
    config = function()
      require('user.plugins.lualine')    -- Cargar la configuración de lualine
    end
  }

end)

