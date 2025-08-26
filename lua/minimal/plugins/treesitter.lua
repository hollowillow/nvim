return {

-- syntax parsing and highlighting
{
        'nvim-treesitter/nvim-treesitter',
        cond = true,
        build = ':TSUpdate',
        opts = {
                highlight = {enable = true},
                indent = {enable = true},
                ensure_installed = {
                        'bash',
                        'c',
                        'diff',
                        'html',
                        'markdown',
                        'markdown_inline',
                        'lua',
                        'printf',
                        'regex'
                }
        }
}

}
