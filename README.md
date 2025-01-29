#  🚧 Work in Progress

This branch is currently being ported to Lazy.nvim as the new package manager. Expect significant changes and improvements in the configuration.

Feel free to explore, but keep in mind that the setup is still under development.

fmicrosoft

``` bash
.
├── init.lua
├── lazy-lock.json
├── lua
│   └── nemoo
│       ├── cmp.lua
│       ├── core
│       │   ├── autocmds.lua
│       │   ├── keymaps.lua
│       │   ├── lazy.lua
│       │   └── options.lua
│       ├── editing
│       │   ├── autopairs.lua
│       │   ├── commentary.lua
│       │   └── surround.lua
│       ├── git
│       │   ├── diffview
│       │   ├── fugitive.lua
│       │   └── gitsigns.lua
│       ├── lsp
│       │   ├── cmp.lua
│       │   ├── inlay-hints.lua
│       │   ├── lspkind.lua
│       │   ├── lsp.lua
│       │   ├── mason.lua
│       │   ├── symbols.lua
│       │   └── treesitter.lua
│       ├── navigation
│       │   ├── aerial.lua
│       │   ├── harpoon.lua
│       │   ├── neo-tree.lua
│       │   └── telescope.lua
│       ├── other
│       │   └── vim-be-good.lua
│       ├── tools
│       │   ├── live-server.lua
│       │   └── toogleterm.lua
│       └── ui
│           ├── dashboard.lua
│           ├── lualine.lua
│           ├── noice.lua
│           ├── notify.lua
│           ├── rose-pine.lua
│           └── statusline.lua
└── README.md
```

plugins working 
windwp/nvim-autopairs
tpope/vim-commentary
tpope/vim-surround
tpope/vim-fugitive
lewis6991/gitsigns.nvim
sindrets/diffview.nvim
hrsh7th/nvim-cmp
lvimuser/lsp-inlayhints.nvim
onsails/lspkind.nvim
neovim/nvim-lspconfig
williamboman/mason.nvim
simrat39/symbols-outline.nvim
nvim-treesitter/nvim-treesitter
stevearc/aerial.nvim
ThePrimeagen/harpoon
nvim-neo-tree/neo-tree.nvim
nvim-telescope/telescope.nvim
ThePrimeagen/vim-be-good
barrett-ruth/live-server.nvim
akinsho/toggleterm.nvim
glepnir/dashboard-nvim
nvim-lualine/lualine.nvim
folke/noice.nvim
rcarriga/nvim-notify
rose-pine/neovim
