##   ⚠️ Deprecated Branch

This branch is no longer maintained. We have migrated to Lazy.nvim as our package manager for improved performance and better maintainability.

For the latest updates and configuration, please check the main branch.

fmicrosoft <3




# Nemoovim

This is my custom configuration for Neovim (Nemoovim). The Idea is to make it as modular and organized as I can.

## Structure

Here's the script to install, check installed dependencies, and automate the installation.

```bash 

```
```

~/.config/nvim/
├── init.lua                # Main entry point
└── lua/
    └── user/
        ├── core/               # Core Neovim configuration
        │   ├── options.lua     # General settings
        │   ├── keymaps.lua     # Key mappings
        │   ├── autocmds.lua    # Autocommands
        │   └── colorscheme.lua # Colorscheme configuration
        ├── plugins/            # Plugin configurations
        │   ├── init.lua        # Plugin manager setup
        │   ├── lsp.lua         # LSP configuration
        │   ├── treesitter.lua  # Treesitter setup
        │   ├── completion.lua  # Autocompletion
        │   └── other_plugin.lua # Additional plugins
        ├── ui/                 # UI customization
        │   ├── statusline.lua  # Statusline configuration
        │   └── dashboard.lua   # Dashboard or start screen
        └── utils/              # Custom utilities
            ├── functions.lua   # Helper functions
            └── commands.lua    # Custom commands
```



# General Neovim Settings Documentation

### ✅ Line Numbers
- Enable normal and relative line numbers for better navigation.
  - `vim.o.number = true`
  - `vim.o.relativenumber = true`

---

### ✅ Indentation Settings
- Use spaces instead of tabs and set 4 spaces per tab.
  - `vim.o.expandtab = true`
  - `vim.o.shiftwidth = 4`
  - `vim.o.tabstop = 4`
- Enable smart syntax-based indentation.
  - `vim.o.smartindent = true`

---

### ✅ Search Settings
- Highlight search results and enable live (incremental) search.
  - `vim.o.hlsearch = true`
  - `vim.o.incsearch = true`
- Case-insensitive search unless uppercase letters are used.
  - `vim.o.ignorecase = true`
  - `vim.o.smartcase = true`

---

### ✅ Persistent Undo
- Enable undo history and store undo files in a specific directory.
  - `vim.o.undofile = true`
  - `vim.o.undodir = vim.fn.stdpath('cache') .. '/undo'`

---

### ✅ Visual Enhancements
- Enable true color support for better visuals.
  - `vim.o.termguicolors = true`
- Always show the sign column to avoid UI shifting.
  - `vim.o.signcolumn = 'yes'`

---

### ✅ User Experience
- Disable line wrapping for better code viewing.
  - `vim.o.wrap = false`
- Keep 8 lines visible above/below and 8 columns on the sides of the cursor.
  - `vim.o.scrolloff = 8`
  - `vim.o.sidescrolloff = 8`
- Highlight the current line for better focus.
  - `vim.o.cursorline = true`

---

### ✅ Performance Tweaks
- Redraw only when necessary to improve performance.
  - `vim.o.lazyredraw = true`
- Faster completion and mapping timeout.
  - `vim.o.updatetime = 300`
  - `vim.o.timeoutlen = 500`

---

### ✅ Split Behavior
- Open new splits below and to the right for intuitive navigation.
  - `vim.o.splitbelow = true`
  - `vim.o.splitright = true`

---

### 🚫 Backup and Swap Files (Optional)
- Disable backup, write backup, and swap files (if not needed).
  - `vim.o.backup = false`
  - `vim.o.writebackup = false`
  - `vim.o.swapfile = false`

