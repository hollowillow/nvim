-- enable language servers
vim.lsp.enable({
    'nixd',

    'lua_ls',
    'bashls',

    'pyright',

    'marksman',
    'cssls',
    'html',
    'yamlls',
    'clangd',
    'rust_analyzer',
})

-- builtin autocomplete
vim.opt.completeopt = { "menuone", "noinsert", "popup", "fuzzy" }

-- enable diagnostics on cursor line
vim.diagnostic.config({
    virtual_lines = {
        current_line = true
    }
})

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
        if client:supports_method('textDocument/formatting') then
            vim.keymap.set('n', 'grf', function()
                vim.lsp.buf.format = { async = true }
            end, { desc = 'Format buffer' })
        end

        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end

        if not client:supports_method('textDocument/willSaveWaitUntil')
            and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
                buffer = ev.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
                end,
            })
        end
    end,
})
