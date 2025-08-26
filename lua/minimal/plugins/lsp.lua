return {

-- download language servers
{
        'williamboman/mason.nvim',
        cond = true,
        cmd = 'Mason',
        build = ':MasonUpdate',
        opts = {}
},

-- lsp config integration
{
        'williamboman/mason-lspconfig.nvim',
        cond = true,
        opts = {
                ensure_installed = {
                        'lua_ls',
                        'bashls',
                        'clangd',
                        'marksman',
                        'cssls',
                        'html'
                }
        }
},

-- base lsp configurations
{
        'neovim/nvim-lspconfig',
        cond = true,
        opts = {},
        config = function()
                vim.lsp.enable('lua_ls')
                vim.lsp.enable('bashls')
                vim.lsp.enable('clangd')
                vim.lsp.enable('marksman')
                vim.lsp.enable('cssls')
                vim.lsp.enable('html')
        end
}

}
