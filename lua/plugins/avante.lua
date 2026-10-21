return {
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        version = false,
        build = "make",
    },
    {
        "nvim-lua/plenary.nvim",
        dependencies = {
            "yetone/avante.nvim",
        },
    },
    {
        "MunifTanjim/nui.nvim",
        dependencies = {
            "yetone/avante.nvim",
        },
    },
    {
        "nvim-tree/nvim-web-devicons",
        dependencies = {
            "yetone/avante.nvim",
        },
    },
    {
        "zbirenbaum/copilot.lua",
        dependencies = {
            "yetone/avante.nvim",
        },
    },
    {
        "ColinKennedy/mega.cmdparse",
        dependencies = {
            "yetone/avante.nvim",
        },
    },
    {
        "ColinKennedy/mega.logging",
        dependencies = {
            "ColinKennedy/mega.cmdparse",
        },
    },
}

