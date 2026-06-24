require('neo-tree').setup({
    filesystem = {
        bind_to_cwd             = false,
        use_libuv_file_watcher  =   true,
        filtered_items = {
            visible         = true,  
            hide_dotfiles   = false,
            hide_gitignored = false,
        },
    },
})

vim.cmd(":Neotree filesystem reveal left")

vim.keymap.set("i", "<F8>", "<ESC>:Neotree<CR>")
vim.keymap.set("n", "<F8>", "<ESC>:Neotree<CR>")
