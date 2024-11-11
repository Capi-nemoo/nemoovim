-- lua/user/plugins/telescope.lua

require('telescope').setup {
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    path_display = { "smart" },
    file_ignore_patterns = { "node_modules", ".git/" },  -- Ignora ciertas carpetas
  },
  pickers = {
    find_files = {
      hidden = true,  -- Muestra archivos ocultos en la búsqueda de archivos
    },
  },
}

