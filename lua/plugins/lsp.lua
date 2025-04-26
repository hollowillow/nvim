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
                {mode = 'n','<leader>ll',vim.lsp.buf.hover,desc = 'LSP hover',},
                {mode = 'n','<leader>la',vim.lsp.buf.code_action,desc = 'LSP code action',},
                {mode = 'n','<leader>ld',vim.lsp.buf.definition,desc = 'LSP definition',},
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
