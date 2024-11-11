-- lua/user/core/keymaps.lua
----------------------------------------------------------------------------------------------
--   ____ _   __(_)___ ___      /_  __/_______  ___
--  / __ \ | / / / __ `__ \______/ / / ___/ _ \/ _ \
-- / / / / |/ / / / / / / /_____/ / / /  /  __/  __/
--/_/ /_/|___/_/_/ /_/ /_/     /_/ /_/   \___/\___/

-- abrir/cerrar el explorador 
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

----------------------------------------------------------------------------------------------
-- ______     __
--/_  __/__  / /__  ______________  ____  ___
--  / / / _ \/ / _ \/ ___/ ___/ __ \/ __ \/ _ \
-- / / /  __/ /  __(__  ) /__/ /_/ / /_/ /  __/
--/_/  \___/_/\___/____/\___/\____/ .___/\___/
--                               /_/

-- Abrir Telescope para buscar archivos
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Buscar texto dentro del proyecto
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- Buscar archivos recientes
vim.api.nvim_set_keymap('n', '<leader>fr', ':Telescope oldfiles<CR>', { noremap = true, silent = true })

-- Buscar buffers abiertos
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })

---------------------------------------------------------------------------------------------

