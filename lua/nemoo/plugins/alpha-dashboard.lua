return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	enabled = true,
	init = false,
	opts = function()
		local dashboard = require("alpha.themes.dashboard")
		local logo = [[
    xs
    ███╗   ██╗███████╗███╗   ███╗ ██████╗  ██████╗   ██╗   ██╗██╗███╗   ███╗
    ████╗  ██║██╔════╝████╗ ████║██╔═══██╗██╔═══██╗  ██║   ██║██║████╗ ████║
    ██╔██╗ ██║█████╗  ██╔████╔██║██║   ██║██║   ██║  ██║   ██║██║██╔████╔██║
    ██║╚██╗██║██╔══╝  ██║╚██╔╝██║██║   ██║██║   ██║  ███  ███║██║██║╚██╔╝██║
    ██║ ╚████║███████╗██║ ╚═╝ ██║╚██████╔╝╚██████╔╝  ╚██████╔╝██║██║ ╚═╝ ██║
    ╚═╝  ╚═══╝╚══════╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝    ╚═██══╝ ╚═╝╚═╝     ╚═╝


    ]]

		dashboard.section.header.val = vim.split(logo, "\n")

		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", "<cmd>ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰮗  Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button(
				"p",
				"  Projects",
				"<cmd>lua require('telescope.builtin').find_files({ cwd = '~/repos', prompt_title = 'Git Repositories', find_command = { 'find', '.', '-mindepth', '1', '-maxdepth', '1', '-type', 'd', '-exec', 'test', '-e', '{}/.git', ';', '-print' } })<CR>"
			),
			dashboard.button("s", "⚙️  Settings", "<cmd>Telescope find_files<CR>"),
			dashboard.button("u", "  Package Manager(lazy)", "<cmd>Lazy<CR>"),
			dashboard.button("c", "  Check Heath", "<cmd>checkhealth<CR>"),
			dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
		}
		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = "AlphaButtons"
			button.opts.hl_shortcut = "AlphaShortcut"
		end
		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.opts.hl = "AlphaButtons"
		dashboard.section.footer.opts.hl = "AlphaFooter"
		dashboard.opts.layout[1].val = 8
		return dashboard
	end,
	config = function(_, dashboard)
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				once = true,
				pattern = "AlphaReady",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			once = true,
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded "
					.. stats.loaded
					.. "/"
					.. stats.count
					.. " plugins in "
					.. ms
					.. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
