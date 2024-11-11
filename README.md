# Nemoovim

This is my custom configuration for Neovim (Nemoovim). The Idea is to make it as modular and organized as I can.

Project Structure

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


This Script is to Create the Directory Structure

```
mkdir -p ~/.config/nvim/lua/user/{core,plugins,ui,utils}
touch ~/.config/nvim/init.lua \
      ~/.config/nvim/lua/user/core/{options.lua,keymaps.lua,autocmds.lua,colorscheme.lua} \
      ~/.config/nvim/lua/user/plugins/{init.lua,lsp.lua,treesitter.lua,completion.lua,other_plugin.lua} \
      ~/.config/nvim/lua/user/ui/{statusline.lua,dashboard.lua} \
      ~/.config/nvim/lua/user/utils/{functions.lua,commands.lua}
```
## Main Features

    - Core: Basic settings, including options, keymaps, autocommands, and colors.

    - Plugins: Organized plugin setup  (LSP, Treesitter, autocompletion)

    - UI: UI customization, including status line and start screen.

    - Utils: Additional functions and commands for optimizing workflow.
