-- Plugins list.
local plugins = {
    "lazy",
    "neo-tree",
    "bufferline",
    "line-numbers",
    "vim-airline",
    "nvim-lspconfig",
    "aerial",
    "nvim-treesitter",
    "nvim-cmp",
    "colorful-winsep",
    "cyberdream",
}

-- Setup plugins.
for i, name in ipairs(plugins) do
    local module_name = "config." .. name
    require(module_name)
end
