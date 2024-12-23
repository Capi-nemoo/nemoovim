
local M = {}

-- Function to display and execute scripts from a specific folder
function M.select_script()
    local scripts_dir = vim.fn.stdpath('config') .. '/scripts/'
    local scripts = {}

    -- Scan the directory for scripts
    local handle = vim.loop.fs_scandir(scripts_dir)
    if handle then
        while true do
            local name, type = vim.loop.fs_scandir_next(handle)
            if not name then break end
            if type == 'file' and name:match("%.sh$") then
                table.insert(scripts, name)
            end
        end
    end

    -- Use Telescope to display the scripts
    local pickers = require("telescope.pickers")
    local finders = require("telescope.finders")
    local actions = require("telescope.actions")
    local action_state = require("telescope.actions.state")

    pickers.new({}, {
        prompt_title = "Select Script",
        finder = finders.new_table({ results = scripts }),
        sorter = require("telescope.config").values.generic_sorter({}),
        attach_mappings = function(prompt_bufnr, map)
            actions.select_default:replace(function()
                actions.close(prompt_bufnr)
                local selection = action_state.get_selected_entry()
                if selection then
                    local script_path = scripts_dir .. selection[1]
                    vim.cmd("!bash " .. script_path)
                end
            end)
            return true
        end,
    }):find()
end

return M

