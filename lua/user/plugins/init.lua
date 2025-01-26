-- lua/user/plugins/init.lua
----------------------------------------------------------------------------------------------
--    ____  __            _               __  __         __  __
--   / __ \/ /_  ______ _(_)___  _____   / / / /      __/ / / /
--  / /_/ / / / / / __ `/ / __ \/ ___/  / / / / | /| / / / / /
-- / ____/ / /_/ / /_/ / / / / (__  )  / /_/ /| |/ |/ / /_/ /
--/_/   /_/\__,_/\__, /_/_/ /_/____/   \____/ |__/|__/\____/
----             /____/
----------------------------------------------------------------------------------------------

-- Initialize packer
vim.cmd [[packadd packer.nvim]]
local packer = require('packer')

packer.startup(function()
    use 'wbthomason/packer.nvim' -- Packer itself

    ---------------------------------------------------

    -- Colorscheme
    use {
        'sainnhe/gruvbox-material',
        config = function()
            require('user.core.colorscheme')
        end
    }

    ---------------------------------------------------

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('user.lsps.treesitter')
        end
    }

    ---------------------------------------------------

    -- nvim-treesitter-textobjects
    use {
        'nvim-treesitter/nvim-treesitter-textobjects',
        requires = { 'nvim-treesitter/nvim-treesitter' },
        config = function()
            require('user.lsps.treesitter-textobjects')  -- Archivo de configuración específico
        end
    }

    ---------------------------------------------------

    -- File Explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('user.navigation.nvim-tree')
        end
    }

    ---------------------------------------------------

    -- LSP Configuration
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('user.lsps.lsp')
        end
    }

    ---------------------------------------------------

    use {
        'williamboman/mason.nvim',
        config = function()
            require('user.lsps.mason') -- External configuration file
        end
    }

    ---------------------------------------------------

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('user.ui.lualine')
        end
    }

    ---------------------------------------------------

    -- Telescope and Extensions
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
        requires = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require('user.navigation.telescope')
        end
    }

    ---------------------------------------------------

    -- Autocompletion
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
        },
        config = function()
            require('user.lsps.autocmds')
        end
    }

    ---------------------------------------------------

    -- Git Tools
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('user.utils.git.gitsigns')
        end
    }

    use {
        'tpope/vim-fugitive',
        config = function()
            require('user.utils.git.fugitive')
        end
    }

    ---------------------------------------------------

    -- Live Server
    use {
        'barrett-ruth/live-server.nvim',
        run = 'npm install -g live-server',
        config = function()
            require('live-server').setup()
            require('user.utils.live-server')
        end
    }

    ---------------------------------------------------

    use {
        'ThePrimeagen/harpoon',
        config = function()
            require('user.navigation.harpoon')
        end
    }
    ---------------------------------------------------

    -- Dashboard

    use {
        'goolord/alpha-nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
            'echasnovski/mini.icons',
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
            require('user.ui.dashboard')
        end
    }

end)
