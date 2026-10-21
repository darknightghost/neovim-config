local avante = require("avante")

avante.setup({
    provider = "qoder",
    acp_providers = {
        qoder = {
            command = "qoderclicn",
            args = { "--acp" },
            env = {
                QODERCN_PERSONAL_ACCESS_TOKEN = os.getenv("QODERCN_PERSONAL_ACCESS_TOKEN")
            }
        }
    },
    auto_suggestions = false,
    behaviour = {
        auto_apply_diff_after_generation = false,
        support_paste_from_clipboard = true,
    }
})

vim.keymap.set("i", "<F6>", "<ESC>:AvanteChat<CR>")
vim.keymap.set("n", "<F6>", "<ESC>:AvanteChat<CR>")

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        -- 必须再 schedule 一次：avante 在 ColorSchemePre/ColorScheme 里也
        -- 用 vim.schedule 重设自己的高亮，要排在它后面才能赢
        vim.schedule(function()
            vim.api.nvim_set_hl(0, "AvanteSidebarWinSeparator", { link = "WinSeparator" })
            vim.api.nvim_set_hl(0, "AvanteTitle",         { fg = "#000000", bg = "#00ff00" })
            vim.api.nvim_set_hl(0, "AvanteReversedTitle", { fg = "#00ff00", bg = "#000000" })
            vim.api.nvim_set_hl(0, "AvanteSubtitle",      { fg = "#000000", bg = "#5ef1ff" })
            vim.api.nvim_set_hl(0, "AvanteThirdTitle",    { fg = "#eeeeee", bg = "#30303a" })
        end)
    end,
})
