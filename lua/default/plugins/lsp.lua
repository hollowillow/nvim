return {

{
        'williamboman/mason.nvim',
        enabled = true,
        lazy = true,
        cmd = "Mason",
        build = ":MasonUpdate",
        opts = {},
},


{
        'williamboman/mason-lspconfig.nvim',
        enabled = true,
        lazy = false,
        opts = {
                ensure_installed = {
                        "lua_ls",
                        "bashls",
                        "clangd",
                        "marksman",
                        "cssls",
                        "html",
                }
        },
},

{
        'neovim/nvim-lspconfig',
        enabled = true,
        lazy = false,
        keys = {
                {mode = 'n','ga',vim.lsp.buf.code_action,desc = 'LSP code action',},
                {mode = 'n','gd',vim.lsp.buf.definition,desc = 'LSP definition',},
                {mode = 'n','gr',vim.lsp.buf.references,desc = 'LSP references',},
                {mode = 'n','<leader>lr',vim.lsp.buf.rename,desc = 'LSP rename',},
        },
        opts = {},
        config = function()
                vim.lsp.enable('lua_ls')
                vim.lsp.enable('bashls')
                vim.lsp.enable('clangd')
                vim.lsp.enable('marksman')
                vim.lsp.enable('cssls')
                vim.lsp.enable('html')
        end,
},

}
