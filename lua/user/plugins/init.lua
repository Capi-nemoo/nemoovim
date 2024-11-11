-- lua/user/plugins/init.lua

--    ____  __            _               __  __         __  __
--   / __ \/ /_  ______ _(_)___  _____   / / / /      __/ / / /
--  / /_/ / / / / / __ `/ / __ \/ ___/  / / / / | /| / / / / /
-- / ____/ / /_/ / /_/ / / / / (__  )  / /_/ /| |/ |/ / /_/ /
--/_/   /_/\__,_/\__, /_/_/ /_/____/   \____/ |__/|__/\____/
----             /____/

-- initialize packer
vim.cmd [[packadd packer.nvim]]
local packer = require('packer')

vim.cmd [[packadd packer.nvim]]
local packer = require('packer')

packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- Gruvbox - Tema
  use {
    'sainnhe/gruvbox-material',
    config = function()
      require('user.core.colorscheme')  -- Carga la configuración del tema
    end
  }

  -- Treesitter - resaltado de sintaxis avanzado
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',  -- Actualiza luego de instalar
    config = function()
      require('user.plugins.treesitter')  -- config file en el directorio
    end
  }
	
  -- Nvim-tree - Explorador de archivos
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' }, -- Iconos opcionales para archivos
    config = function()
      require('user.plugins.nvim-tree')  -- Cargar la configuración de nvim-tree
    end
  }

    -- lualine - Barra de estado personalizada
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- Iconos
    config = function()
      require('user.plugins.lualine')    -- Cargar la config
    end
  }
  
    -- Dashboard-nvim - Pagina de Inicio vim custom
  use {
    'nvimdev/dashboard-nvim',           
    config = function()
      require('user.ui.dashboard')       -- Cargar config
    end,
    requires = { 'nvim-tree/nvim-web-devicons' } -- Iconos 
  }

  -- Telescope - búsqueda avanzada
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }  -- Dependencia
  }
end)

