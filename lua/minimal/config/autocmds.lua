-- When opening a buffer that's within a git repository
-- changes cwd to the root of that git repository
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
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
