return {
    {
        'vim-airline/vim-airline',
        lazy    = false,
        config = function()
            vim.g["airline#extensions#searchcount#enabled"] = 0
        end,
    },
    {
        'vim-airline/vim-airline-themes',
        dependencies = {
            'vim-airline/vim-airline',
        },
    },
    {
        'enricobacis/vim-airline-clock',
        dependencies = {
            'vim-airline/vim-airline',
        },
        config = function()
            vim.g["airline#extensions#clock#format"]        = '%Y-%m-%d %H:%M:%S'
            vim.g["airline#extensions#clock#updatetime"]    = 500
        end,
    },
}
