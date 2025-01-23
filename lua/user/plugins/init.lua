-- lua/user/plugins/init.lua
----------------------------------------------------------------------------------------------
--    ____  __            _               __  __         __  __
--   / __ \/ /_  ______ _(_)___  _____   / / / /      __/ / / /
--  / /_/ / / / / / __ `/ / __ \/ ___/  / / / / | /| / / / / /
-- / ____/ / /_/ / /_/ / / / / (__  )  / /_/ /| |/ |/ / /_/ /
--/_/   /_/\__,_/\__, /_/_/ /_/____/   \____/ |__/|__/\____/
----             /____/

-- initialize packer
vim.cmd [[packadd packer.nvim]]
local packer = require('packer')

packer.startup(function()
  use 'wbthomason/packer.nvim'


  -- gruvbox-material; - color Tema
  use {
    'sainnhe/gruvbox-material',
    config = function()
      require('user.core.colorscheme')  -- Carga la configuración del tema
    end
  }

  -- nvim-treesitter; - resaltado de sintaxis avanzado
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',  -- Actualiza luego de instalar
    config = function()
      require('user.plugins.treesitter')  -- config file en el directorio
    end
  }
	
  -- nvim-tree; - Explorador de archivos
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' }, -- Iconos opcionales para archivos
    config = function()
      require('user.plugins.nvim-tree')  -- Cargar la configuración de nvim-tree
   end
  }

  --  nvim-lspconfig
  use {
  'neovim/nvim-lspconfig', -- Configuración básica para LSP
  }

    -- lualine; - Barra de estado personalizada
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- Iconos
    config = function()
      require('user.ui.lualine')    -- Cargar la config
    end
  }
  
-- Telescope-fzf-native; Mejorado para búsqueda avanzada
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    requires = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('telescope').setup {
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
          }
        }
      }
      require('telescope').load_extension('fzf')
    end
  }

-- vim-fugitive; Herramientas avanzadas para git
use {
  'tpope/vim-fugitive'
}

  --- nvim-cmp; Autocompletion paths
  use {
  'hrsh7th/nvim-cmp',
  requires = {
    'hrsh7th/cmp-path', -- Fuente para rutas
    'hrsh7th/cmp-nvim-lsp', -- Fuente para LSP
    'hrsh7th/cmp-buffer', -- Fuente para buffers
  }
}

-- live-server.nvim; plugin for webs  
  use({
  'barrett-ruth/live-server.nvim',
  run = 'npm install -g live-server',
  config = function()
    require('live-server').setup()
  end
})

-- gitsigns; Estado de git y resaltado de nuevas lineas
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('gitsigns').setup()
    end
}

  -- alpha-nvim; Dashboard - Pagina "home"
  use {
    'goolord/alpha-nvim',
    requires = {
        'nvim-tree/nvim-web-devicons',
        'echasnovski/mini.icons',
        'nvim-lua/plenary.nvim',
    },
    config = function ()
	require'alpha'.setup(require'alpha.themes.dashboard'.config)
	require('user.ui.dashboard')
    end
}


end)
