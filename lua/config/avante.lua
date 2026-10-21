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
