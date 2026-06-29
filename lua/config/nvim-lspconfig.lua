-- C++
vim.lsp.enable('clangd')

-- Python
vim.lsp.enable('pyright')

-- Java
vim.lsp.enable('jdtls')

-- Rust
vim.lsp.enable('rust-analyzer')

-- go
vim.lsp.enable('gopls')

-- lua
vim.lsp.enable('lua_ls')
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = {
                globals = {
                    "vim"
                },
                disable = {
                    "missing-fields"
                },
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME,
                    vim.fn.stdpath("config"),
                    vim.fn.stdpath("data") .. "/lazy",
                },
            },
            completion = {
                callSnippet = "Replace"
            },
            hint = {
                enable = true,
                setType = true
            },
        }
    }
})


-- vim.keymap.set("n", "<C-t>", "<C-o>")
-- vim.keymap.set("i", "<C-t>", "<C-o>")
 
vim.keymap.set("n", "<C-]>", "<ESC>:lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("i", "<C-]>", "<ESC>:lua vim.lsp.buf.declaration()<CR>")

vim.keymap.set("n", "<C-\\>", "<ESC>:lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("i", "<C-\\>", "<ESC>:lua vim.lsp.buf.definition()<CR>")
