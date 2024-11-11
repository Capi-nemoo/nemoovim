-- _ __   ___ _ __ ___   ___   __\ \   / (_)_ __ ___
--| '_ \ / _ \ '_ ` _ \ / _ \ / _ \ \ / /| | '_ ` _ \
--| | | |  __/ | | | | | (_) | (_) \ V / | | | | | | |
--|_| |_|\___|_| |_| |_|\___/ \___/ \_/  |_|_| |_| |_|

-- Core configurations
require("user.core.options")       -- General Neovim settings
require("user.core.keymaps")       -- Custom key mappings
require("user.core.autocmds")      -- Autocommands
require("user.core.colorscheme")   -- Colorscheme settings

-- Plugins
require("user.plugins.init")       -- Plugin manager and plugins list
require("user.plugins.lsp")        -- LSP configuration
require("user.plugins.treesitter") -- Treesitter configuration
require("user.plugins.completion") -- Completion settings
require("user.plugins.nvim-tree")
require("user.plugins.other_plugin") -- Any other specific plugin configurations
require("user.plugins.lualine") 
require("user.plugins.telescope") 

-- UI
require("user.ui.dashboard")       -- Dashboard setup
require("user.ui.statusline")      -- Statusline configuration

-- Utilities
require("user.utils.commands")     -- Custom commands
require("user.utils.functions")    -- Custom helper functions


