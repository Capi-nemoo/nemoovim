return {
  -- nvim-autopairs: Autopairs brackets
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },

  -- vim-commentary: Quick commenting
  { "tpope/vim-commentary", event = "VeryLazy"},

  -- vim-fugitive: Git integration
  { "tpope/vim-fugitive", cmd = { "Git", "G" }, config = true },

  -- gitsigns.nvim: Git signs in the gutter
  { "lewis6991/gitsigns.nvim", event = "BufReadPre", config = true },

  -- diffview.nvim: Git diff viewer
  { "sindrets/diffview.nvim", cmd = "DiffviewOpen", dependencies = { "nvim-lua/plenary.nvim" }, config = true },

  -- nvim-cmp: Autocompletion
  { "hrsh7th/nvim-cmp", event = "InsertEnter", dependencies = { "hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "L3MON4D3/LuaSnip" }, config = true },

  -- lsp-inlayhints.nvim: LSP inlay hints
  { "lvimuser/lsp-inlayhints.nvim", event = "LspAttach", config = true },

  -- lspkind.nvim: Icons for autocompletion
  { "onsails/lspkind.nvim", event = "VeryLazy", config = true },

  -- nvim-lspconfig: LSP configurations
  { "neovim/nvim-lspconfig", event = { "BufReadPre", "BufNewFile" }, config = true },

  -- mason.nvim: Manage LSP and tools
  { "williamboman/mason.nvim", cmd = "Mason", config = true },

  -- symbols-outline.nvim: Symbol outline
  { "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline", config = true },

  -- nvim-treesitter: Better syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = { "BufReadPost", "BufNewFile" }, config = true },

  -- aerial.nvim: Code outline window
  { "stevearc/aerial.nvim", cmd = { "AerialToggle", "AerialOpen" }, config = true },

  -- neo-tree.nvim: Modern file explorer
  { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" }, cmd = "Neotree", config = true },

  -- telescope.nvim: Fuzzy finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, cmd = "Telescope", config = true },

  -- vim-be-good: Practice Vim motions
  { "ThePrimeagen/vim-be-good", cmd = "VimBeGood", config = true },

  -- live-server.nvim: Live server for web
  { "barrett-ruth/live-server.nvim", cmd = "LiveServer", config = true },

  -- toggleterm.nvim: Toggleable terminal
  { "akinsho/toggleterm.nvim", version = "*", cmd = { "ToggleTerm", "TermExec" }, config = true },

  -- lualine.nvim: Status line
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, event = "VeryLazy", config = true },

  -- rose-pine/neovim: Rose Pine colorscheme
  { "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000, config = true },

}

