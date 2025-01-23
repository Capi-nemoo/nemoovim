require('gitsigns').setup {
    signs = {
        add          = { text = '+' },
        change       = { text = '~' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
    },
    numhl = false, -- Resaltar números de línea
    linehl = false, -- Resaltar líneas completas
    keymaps = {}, -- Mapas de teclas para Git actions
}

