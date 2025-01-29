local cmp = require'cmp'

cmp.setup({
  sources = {
    { name = 'path' },      -- Autocompletado de rutas
    { name = 'buffer' },    -- Autocompletado del buffer actual
    { name = 'nvim_lsp' },  -- Autocompletado basado en LSP
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
})

