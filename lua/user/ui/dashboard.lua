-- lua/user/ui/dashboard.lua

local db = require('dashboard')

-- Configura el header (opcional)
db.custom_header = {
  "Bienvenido a Neovim",
  "Let's code something awesome!",
}

-- Accesos rápidos
db.custom_center = {
  { icon = "  ", desc = "Nuevo archivo               ", action = "enew" },
  { icon = "  ", desc = "Recientes                   ", action = "Telescope oldfiles" },
  { icon = "  ", desc = "Buscar archivo              ", action = "Telescope find_files" },
  { icon = "  ", desc = "Buscar texto                ", action = "Telescope live_grep" },
}

-- Configura el footer (opcional)
db.custom_footer = { "Neovim powered by packer.nvim and dashboard-nvim" }

