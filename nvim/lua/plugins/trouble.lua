return {
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics" },
      { "<leader>xq", "<cmd>Trouble quickfix toggle<cr>", desc = "Quickfix" },
      { "<leader>xr", "<cmd>Trouble lsp_references toggle<cr>", desc = "LSP References" },
    },
    opts = {},
  },
}

