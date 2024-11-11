-- lua/user/plugins/telescope.lua
--
-- _       _
--| |_ ___| | ___  ___  ___ ___  _ __   ___
--| __/ _ \ |/ _ \/ __|/ __/ _ \| '_ \ / _ \
--| ||  __/ |  __/\__ \ (_| (_) | |_) |  __/
 --\__\___|_|\___||___/\___\___/| .__/ \___|
 --                             |_|

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

