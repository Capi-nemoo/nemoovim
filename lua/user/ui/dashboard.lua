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
    dashboard.button("p", "  Projects", "<cmd>lua require('telescope.builtin').find_files({ cwd = '~/repos', prompt_title = 'Git Repositories', find_command = { 'find', '.', '-mindepth', '1', '-maxdepth', '1', '-type', 'd', '-exec', 'test', '-e', '{}/.git', ';', '-print' } })<CR>"), 
    dashboard.button("s", "⚙️  Settings", "<cmd>Telescope find_files<CR>"),
    dashboard.button("u", "  Update plugins", "<cmd>PackerSync<CR>"),
    dashboard.button("c", "  Check Heath", "<cmd>checkhealth<CR>"),
    dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),

}

-- Set footer
-- You can add a custom footer message here
dashboard.section.footer.val = {
    "el nemo cmamo",
}

alpha.setup(dashboard.config)
