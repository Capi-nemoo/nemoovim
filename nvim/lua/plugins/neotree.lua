return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = { "Neotree" },
    keys = {
      { "<leader>e",  "<cmd>Neotree toggle filesystem reveal right<cr>", desc = "File explorer" },
      { "<leader>eg", "<cmd>Neotree toggle git_status git_base=main reveal right<cr>", desc = "Git status explorer" },
      { "<leader>eb", "<cmd>Neotree toggle buffers reveal right<cr>", desc = "Buffers explorer" },
    },
  },
}

