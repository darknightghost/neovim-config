function match_left_side_windows(buf)
    local state = require("neo-tree.sources.manager").get_state("filesystem")
    return (string.match(buf.path, "^" .. state.path .. "/neo-tree filesystem \\[%d+\\]$") ~= nil)
        and (string.match(buf.path, "^" .. state.path .. "/neo-tree buffers \\[%d+\\]$") ~= nil)
        and (string.match(buf.path, "^" .. state.path .. "/neo-tree git_status \\[%d+\\]$") ~= nil)
end

vim.opt.termguicolors = true
require("bufferline").setup(
    {
        options = {
            numbers = "buffer_id",
            groups = {
                options = {
                    toggle_hidden_on_enter = true -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
                },
                items = {
                    {
                        name = "Left-side",
                        highlight = {underline = true, sp = "blue"}, -- Optional
                        priority = 2, -- determines where it will appear relative to other groups (Optional)
                        matcher = function(buf) -- Mandatory
                            return match_left_side_windows(buf)
                        end,
                     },
                     {
                        name = "Opened Files",
                        highlight = {undercurl = true, sp = "green"},
                        icon = " ", -- Optional
                        auto_close = false,  -- whether or not close this group if it doesn't contain the current buffer
                        matcher = function(buf)
                            return not match_left_side_windows(buf)
                        end,
                        separator = { -- Optional
                          style = require('bufferline.groups').separator.tab
                        },
                     }
                }
            }
        }
    }
)
