-- _ __   ___ _ __ ___   ___   __\ \   / (_)_ __ ___
--| '_ \ / _ \ '_ ` _ \ / _ \ / _ \ \ / /| | '_ ` _ \
--| | | |  __/ | | | | | (_) | (_) \ V / | | | | | | |
--|_| |_|\___|_| |_| |_|\___/ \___/ \_/  |_|_| |_| |_|

require("user.plugins.init")       -- Plugin manager and plugins list

-- Core configurations
require("user.core.options")       -- General Neovim settings
require("user.core.keymaps")       -- Custom key mappings
require("user.core.colorscheme")   -- Colorscheme settings
--require("user.core.plugin_manager")   -- Colorscheme settings

-- Plugins
require("user.plugins.nvim-tree")
require("user.plugins.other_plugin") -- Any other specific plugin configurations
require("user.plugins.telescope") -- Any other specific plugin configurations

-- LSP
require("user.lsps.treesitter") -- Any other specific plugin configurations
require("user.lsps.lsp") -- Any other specific plugin configurations
require("user.lsps.completion") -- Any other specific plugin configurations
require("user.lsps.autocmds") -- Any other specific plugin configurations

--Utils
require("user.utils.live-server") --node server for web dev
require("user.utils.functions") --nose aunxd
--require("user.utils.dashboard_utils") -- utilities to display in the dashboard menu
require("user.utils.commands") -- quick commands 
    --git
require("user.utils.git.gitsigns") -- flags on new or deleted lines
require("user.utils.git.fugitive") -- git wrapper for neovim 

-- UI
require("user.ui.dashboard")       -- Dashboard setup
require("user.ui.colorscheme_picker")  --choose colorscheme from a curated list
require("user.ui.statusline")      -- Statusline configuration
require("user.ui.lualine") --line pretty 


