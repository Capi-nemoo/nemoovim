-- user/ui/colorscheme_picker.lua

local M = {}

-- Define the colorschemes you want to include
M.colorschemes = {
    "gruvbox-material",
    "tokyonight",
    "nightfox",
    "catppuccin",
    "everforest"
}

-- Function to display and select colorschemes
function M.select_colorscheme()
    local pickers = require("telescope.pickers")
    local finders = require("telescope.finders")
    local actions = require("telescope.actions")
    local action_state = require("telescope.actions.state")

    pickers.new({}, {
        prompt_title = "Select Colorscheme",
        finder = finders.new_table({ results = M.colorschemes }),
        sorter = require("telescope.config").values.generic_sorter({}),
        attach_mappings = function(prompt_bufnr, map)
            actions.select_default:replace(function()
                actions.close(prompt_bufnr)
                local selection = action_state.get_selected_entry()
                if selection then
                    vim.cmd("colorscheme " .. selection[1])
                end
            end)
            return true
        end,
    }):find()
end

return M
