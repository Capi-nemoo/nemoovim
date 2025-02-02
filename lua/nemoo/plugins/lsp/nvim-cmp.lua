

return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- Connects nvim-cmp to LSP
    "hrsh7th/cmp-buffer", -- Buffer words completion
    "hrsh7th/cmp-path", -- File path completion
    "L3MON4D3/LuaSnip", -- Snippet engine
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion manually
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- Get suggestions from LSP
        { name = "buffer" }, -- Get words from buffer
        { name = "path" }, -- Get file paths
      }),
    })
  end,
}

