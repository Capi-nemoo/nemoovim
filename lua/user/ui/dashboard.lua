local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')
local Path = require('plenary.path')



dashboard.section.header.val = {
    [[███╗   ██╗███████╗███╗   ███╗ ██████╗  ██████╗   ██╗   ██╗██╗███╗   ███╗]],
    [[████╗  ██║██╔════╝████╗ ████║██╔═══██╗██╔═══██╗  ██║   ██║██║████╗ ████║]],
    [[██╔██╗ ██║█████╗  ██╔████╔██║██║   ██║██║   ██║  ██║   ██║██║██╔████╔██║]],
    [[██║╚██╗██║██╔══╝  ██║╚██╔╝██║██║   ██║██║   ██║  ███  ███║██║██║╚██╔╝██║]],
    [[██║ ╚████║███████╗██║ ╚═╝ ██║╚██████╔╝╚██████╔╝  ╚██████╔╝██║██║ ╚═╝ ██║]],
    [[╚═╝  ╚═══╝╚══════╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝    ╚═██══╝ ╚═╝╚═╝     ╚═╝]],
}



-- Set menu
-- You can customize the menu to include commands you use frequently
dashboard.section.buttons.val = {
    dashboard.button("e", "  New file" , "<cmd>ene <BAR> startinsert <CR>"),
    dashboard.button("f", "󰮗  Find file", "<cmd>Telescope find_files<CR>"),
    dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<CR>"),
    dashboard.button("s", "⚙️  Settings", "<cmd>e $MYVIMRC<CR>"),
    dashboard.button("u", "  Update plugins", "<cmd>PackerSync<CR>"),
    dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
}

-- Set footer
-- You can add a custom footer message here
dashboard.section.footer.val = {
    "el nemo cmamo",
}
