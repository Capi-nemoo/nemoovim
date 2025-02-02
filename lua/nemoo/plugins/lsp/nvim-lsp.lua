---------------------------------------------------------------------------------------------
-- _     ____  ____
--| |   / ___||  _ \
--| |   \___ \| |_) |
--| |___ ___) |  __/
--|_____|____/|_|

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local lspconfig = require("lspconfig") -- ✅ Ensure correct require
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- 📌 General LSP keybindings
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      end,
    })
  end,
}

