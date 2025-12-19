return
{
  "aurum77/live-server.nvim",
  build = "npm install -g live-server",
  config = function()
    require("live_server").setup {
      port = 5500,
      browser = "zen-browser",
      quiet = false,
    }
  end,
}


