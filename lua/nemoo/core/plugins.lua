-- lua/nemoo/core/plugins.lua
-- reference to all my plugins uwu 
----------------------------------------------------------------------------------------------
--    ____  __            _               __  __         __  __
--   / __ \/ /_  ______ _(_)___  _____   / / / /      __/ / / /
--  / /_/ / / / / / __ `/ / __ \/ ___/  / / / / | /| / / / / /
-- / ____/ / /_/ / /_/ / / / / (__  )  / /_/ /| |/ |/ / /_/ /
--/_/   /_/\__,_/\__, /_/_/ /_/____/   \____/ |__/|__/\____/
----             /____/
----------------------------------------------------------------------------------------------

return {
 --                                 | |
 --   __ _  ___ _ __   ___ _ __ __ _| |
 --  / _` |/ _ \ '_ \ / _ \ '__/ _` | |
 -- | (_| |  __/ | | |  __/ | | (_| | |
 --  \__, |\___|_| |_|\___|_|  \__,_|_|
 --   __/ |                            
---  |___/                             
 --
 --
  -- nvim-autopairs: Autopairs brackets
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },

  -- Comment-nvim: Quick commenting
  { "numToStr/Comment.nvim", event = "VeryLazy", config = true },

  -- toggleterm.nvim: Toggleable terminal
  { "akinsho/toggleterm.nvim", version = "*", cmd = { "ToggleTerm", "TermExec" }, config = true },

 --        _ _   
 --       (_) |  
 --   __ _ _| |_ 
 --  / _` | | __|
 -- | (_| | | |_ 
 --  \__, |_|\__|
 --   __/ |      
 --  |___/       

  -- vim-fugitive: Git integration
  { "tpope/vim-fugitive", cmd = { "Git", "G" }, config = true },

  -- gitsigns.nvim: Git signs in the gutter
  { "lewis6991/gitsigns.nvim", event = "BufReadPre", config = true },

  -- diffview.nvim: Git diff viewer
  { "sindrets/diffview.nvim", cmd = "DiffviewOpen", dependencies = { "nvim-lua/plenary.nvim" } },

 --  _                             _               _                                  _      _   _                 
 -- | |                           | |             | |                                | |    | | (_)                
 -- | |___ _ __     __ _ _ __   __| |   __ _ _   _| |_ ___   ___ ___  _ __ ___  _ __ | | ___| |_ _  ___  _ __  ___ 
 -- | / __| '_ \   / _` | '_ \ / _` |  / _` | | | | __/ _ \ / __/ _ \| '_ ` _ \| '_ \| |/ _ \ __| |/ _ \| '_ \/ __|
 -- | \__ \ |_) | | (_| | | | | (_| | | (_| | |_| | || (_) | (_| (_) | | | | | | |_) | |  __/ |_| | (_) | | | \__ \
 -- |_|___/ .__/   \__,_|_| |_|\__,_|  \__,_|\__,_|\__\___/ \___\___/|_| |_| |_| .__/|_|\___|\__|_|\___/|_| |_|___/
 --       | |                                                                  | |                                 
 --       |_|                                                                  |_|                                 
 --
  -- -- -- nvim-lspconfig: LSP configurations 
  -- { "neovim/nvim-lspconfig", event = { "BufReadPre", "BufNewFile" }, config = true },
  -- --
  -- -- -- nvim-cmp: Autocompletion
  -- { "hrsh7th/nvim-cmp", event = "InsertEnter", dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "L3MON4D3/LuaSnip" }, config = true },
  -- --
  -- -- cmp-nvim-lsp:
  -- { "hrsh7th/cmp-nvim-lsp", lazy = true, config = true },
  --
  -- mason.nvim: Manage LSP and tools
  { "williamboman/mason.nvim", cmd = "Mason" },

  -- lsp-inlayhints.nvim: LSP inlay hints
  { "lvimuser/lsp-inlayhints.nvim", event = "LspAttach" },

  -- lspkind.nvim: Icons for autocompletion
  { "onsails/lspkind.nvim", event = "VeryLazy" },

  -- nvim-treesitter: Better syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = { "BufReadPost", "BufNewFile" } },

 --                    _             _   _             
 --                   (_)           | | (_)            
 --  _ __   __ ___   ___  __ _  __ _| |_ _  ___  _ __  
 -- | '_ \ / _` \ \ / / |/ _` |/ _` | __| |/ _ \| '_ \ 
 -- | | | | (_| |\ V /| | (_| | (_| | |_| | (_) | | | |
 -- |_| |_|\__,_| \_/ |_|\__, |\__,_|\__|_|\___/|_| |_|
 --                       __/ |                        
 --                      |___/                         
 --
 --
  -- telescope.nvim: Fuzzy finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, cmd = "Telescope", config = true },

  -- symbols-outline.nvim: Symbol outline
  { "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline" },

  -- aerial.nvim: Code outline window
--  { "stevearc/aerial.nvim", cmd = { "AerialToggle", "AerialOpen" }, config = true },

  -- neo-tree.nvim: Modern file explorer
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" }, cmd = "Neotree", config = true },

 --  _    _ _____ 
 -- | |  | |_   _|
 -- | |  | | | |  
 -- | |  | | | |  
 -- | |__| |_| |_ 
 --  \____/|_____|
 --
  -- lualine.nvim: Status line
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, event = "VeryLazy", config = true },

  -- rose-pine/neovim: Rose Pine colorscheme
  { "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000, config = true },

 --  _              _     
 -- | |            | |    
 -- | |_ ___   ___ | |___ 
 -- | __/ _ \ / _ \| / __|
 -- | || (_) | (_) | \__ \
 --  \__\___/ \___/|_|___/
 --

  -- vim-be-good: Practice Vim motions
  { "ThePrimeagen/vim-be-good", cmd = "VimBeGood" },

  -- live-server.nvim: Live server for web
  { "barrett-ruth/live-server.nvim", cmd = "LiveServer" },

}
