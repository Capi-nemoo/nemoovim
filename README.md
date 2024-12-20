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


