-- enable language servers
vim.lsp.enable({
        'lua_ls',
        'bashls',
        'marksman',
        'cssls',
        'html',
        'yamlls',
        'clangd',
        'rust_analyzer',
})

-- builtin autocomplete
vim.opt.completeopt = { "menuone", "noinsert", "popup", "fuzzy" }

vim.api.nvim_create_augroup('LSP',{clear = true})
vim.api.nvim_create_autocmd('LspAttach',{
        group = 'LSP',
        callback = function(args)
                local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

                if client:supports_method('textDocument/completion') then
                        vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
                end
        end
})

-- enable diagnostics on cursor line
vim.diagnostic.config({
        virtual_lines = {
                current_line = true
        }
})
