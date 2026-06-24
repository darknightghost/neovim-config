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


vim.keymap.set("n", "<C-t>", "<C-o>")
vim.keymap.set("i", "<C-t>", "<C-o>")

vim.keymap.set("n", "<C-]>", "<ESC>:lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("i", "<C-]>", "<ESC>:lua vim.lsp.buf.declaration()<CR>")

vim.keymap.set("n", "<C-[>", "<ESC>:lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("i", "<C-[>", "<ESC>:lua vim.lsp.buf.definition()<CR>")
