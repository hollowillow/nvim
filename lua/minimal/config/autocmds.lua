-- git repository auto root
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        local filepath = vim.fn.expand("%:p")  -- Get the full path of the current buffer
        local handle = io.popen("git -C " .. vim.fn.fnamemodify(filepath, ":h") .. " rev-parse --show-toplevel 2>/dev/null")
        local result = handle:read("*a")
        handle:close()

        if result and result ~= "" then
            local git_root = result:gsub("%s+", "")  -- Trim whitespace
            vim.cmd("cd " .. git_root)  -- Change the current working directory to the Git root
        end
    end,
})

-- dynamic numbers
vim.o.number = true
vim.api.nvim_create_augroup('DynamicNumbers', { clear = true })
vim.api.nvim_create_autocmd('InsertEnter', {
        group = 'DynamicNumbers',
        callback = function()
                vim.o.relativenumber = false
        end,
})
vim.api.nvim_create_autocmd('InsertLeave', {
        group = 'DynamicNumbers',
        callback = function()
                vim.o.relativenumber = true
        end,
})
