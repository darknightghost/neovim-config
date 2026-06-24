local nvim_treesitter = require('nvim-treesitter')

nvim_treesitter.setup{
    install_dir = vim.fn.stdpath('data') .. '/nvim-treesitter/site',
}
nvim_treesitter.install({
    'bash', 
    'c', 
    'c_sharp', 
    'cmake', 
    'cpp', 
    'css', 
    'csv', 
    'desktop', 
    'devicetree', 
    'doxygen', 
    'git_config', 
    'gpg', 
    'git_rebase', 
    'html',
    'http',
    'ini',
    'rust', 
    'java', 
    'javadoc', 
    'javascript', 
    'json', 
    'jsonS', 
    'kotlin', 
    'lua',
    'make',
    'perl',
    'python',
    'robot',
    'sql',
    'xml',
    'yaml',
    'zig',
    'zsh',
}):wait(300000)

vim.api.nvim_create_autocmd('FileType', {
    pattern = { '<filetype>' },
    callback = function() 
        vim.treesitter.start() 
        -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo[0][0].foldmethod = 'expr'
    end,
})
