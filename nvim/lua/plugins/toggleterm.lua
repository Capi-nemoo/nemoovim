return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>t", "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle floating terminal" },
    },
    opts = {
      size = 15,
      open_mapping = [[<c-\>]],
      shade_terminals = true,
      direction = "float",
    },
  },
}

