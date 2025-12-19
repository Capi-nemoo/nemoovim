return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = { "lua", "vim", "vimdoc", "bash", "json", "markdown", "python" },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}

