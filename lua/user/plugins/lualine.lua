-- lua/user/plugins/lualine.lua

require('lualine').setup {
  options = {
    icons_enabled = true,            -- Usa iconos en la barra de estado
    theme = 'gruvbox',                -- Tema de lualine (puedes cambiarlo)
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_a = { 'mode' },           -- Modo actual (e.g., NORMAL, INSERT)
    lualine_b = { 'branch' },         -- Rama de git
    lualine_c = { 'filename' },       -- Nombre del archivo actual
    lualine_x = { 'encoding', 'fileformat', 'filetype' },  -- Información del archivo
    lualine_y = { 'progress' },       -- Progreso en el archivo (e.g., línea 50%)
    lualine_z = { 'location' },       -- Posición del cursor (línea y columna)
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },       -- Muestra solo el nombre del archivo en buffers inactivos
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},                       -- Personalización de la línea de pestañas (opcional)
  extensions = { 'nvim-tree' }        -- Extensiones opcionales (e.g., para el explorador de archivos)
}

