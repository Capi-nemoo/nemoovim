return {
  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,   -- no lo cargues a menos que lo uses
  },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
  },

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },

  -- El tema ACTUAL que quieres cargar
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme kanagawa-wave")
    end,
  },
}

