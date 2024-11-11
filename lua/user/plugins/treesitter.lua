-- lua/user/plugins/nvim-tree.lua

require('nvim-tree').setup {
  -- Desactiva netrw para evitar conflictos
  disable_netrw = true,
  hijack_netrw = true,

  -- Ajustes del explorador
  view = {
    width = 30,              -- Ancho de la ventana del explorador
    side = 'left',           -- Lado donde se abre el explorador
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

  open_on_tab = true,         -- Abrir nvim-tree en una nueva pestaña

  -- Configuración del comportamiento de actualización
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  -- Ignorar archivos ocultos (dotfiles) al abrir el explorador
  filters = {
    dotfiles = false,       -- Cambia a true para ocultar archivos ocultos
  },
}

