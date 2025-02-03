-- lua/user/plugins/nvim-tree.lua

---           _                 _
-- _ ____   _(_)_ __ ___       | |_ _ __ ___  ___
--| '_ \ \ / / | '_ ` _ \ _____| __| '__/ _ \/ _ \
--| | | \ V /| | | | | | |_____| |_| | |  __/  __/
--|_| |_|\_/ |_|_| |_| |_|      \__|_|  \___|\___|

-- Configuración de nvim-tree
require('nvim-tree').setup {
  -- Desactiva netrw al iniciar Neovim
  disable_netrw = true,
  hijack_netrw = true,

  -- Ajustes del explorador
  view = {
    width = 30,              -- Ancho de la ventana del explorador
    side = 'right',           -- Lado donde se abre el explorador
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
      },
    },
  },

  -- Configuración del comportamiento de actualización
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  -- Ignorar archivos al abrir el explorador
  filters = {
    dotfiles = false,       -- Cambia a true para ocultar archivos ocultos
  },
}

