return {
    {
        "neovim/nvim-lspconfig",
        build = function()
            --if not vim.fn.executable("/usr/bin/clangd") then
            --    vim.fn.system("sudo pacman -S clang")
            --end
        end,
    }
}

