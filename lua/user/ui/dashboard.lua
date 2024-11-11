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
    dashboard.button("f", "󰮗  Find file", "<cmd>Telescope <CR>"),
    dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<CR>"),
    dashboard.button("p", "  Projects", "<cmd>lua require('telescope.builtin').find_files({ cwd = '~/repos', prompt_title = 'Projects', find_command = { 'find', '.', '-mindepth', '1', '-maxdepth', '1', '-type', 'd' } })<CR>"),
    dashboard.button("p", "📁  Git Repositories", "<cmd>lua require('telescope.builtin').find_files({ cwd = '~/repos', prompt_title = 'Git Repositories', find_command = { 'find', '.', '-mindepth', '1', '-maxdepth', '1', '-type', 'd', '-exec', 'test', '-e', '{}/.git', ';', '-print' } })<CR>"),
    dashboard.button("p", "📁  Git Repositories (Global)", "<cmd>lua require('telescope.builtin').find_files({ prompt_title = 'Git Repositories', find_command = { 'find', '/', '-type', 'd', '-name', '.git', '-prune', '-exec', 'dirname', '{}', ';' } })<CR>"),
    dashboard.button("s", "⚙️  Settings", "<cmd>Telescope find_files<CR>"),
    dashboard.button("u", "  Update plugins", "<cmd>PackerSync<CR>"),
    dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
}

-- Set footer
-- You can add a custom footer message here
dashboard.section.footer.val = {
    "el nemo cmamo",
}

alpha.setup(dashboard.config)
