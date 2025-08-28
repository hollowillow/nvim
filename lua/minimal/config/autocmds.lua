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

-- dynamic windows
vim.o.splitbelow = true
vim.o.splitright = true
vim.api.nvim_create_augroup('DynamicWindows', { clear = true })
vim.api.nvim_create_autocmd('BufWinEnter',{
        group = 'DynamicWindows',
        callback = function()
                if vim.o.filetype == 'help' then
                        vim.cmd.wincmd('K')
                end
        end
})

vim.api.nvim_create_autocmd('WinResized',{
        group = 'DynamicWindows',
        callback = function()
                if vim.o.filetype == 'query' then
                        vim.cmd("vertical resize 60")
                end
        end
})

-- dynamic colorcolumn
local last_col = -1
local last_colorcolumn_state = nil

-- colorcolumn for specific filetypes
-- set to '' to disable completely
local filetype_colorcolumn = {
        text = '',
        markdown = '80',
        rust = '100',
}
local default_colorcolumn = '80'

vim.api.nvim_create_augroup('DynamicColorcolumn', { clear = true })
vim.api.nvim_create_autocmd({'CursorMoved', 'CursorMovedI'},{
        group = 'DynamicColorcolumn',
        callback = function()
                -- check per filetype settings
                -- exit early if colorcolumn is disabled for filetype
                local target_colorcolumn = filetype_colorcolumn[vim.o.filetype] or default_colorcolumn
                if target_colorcolumn == '' then
                        return
                end

                -- get cursor column
                -- exit early if it hasn't changed
                local col = vim.api.nvim_win_get_cursor(0)[2]
                if col == last_col then
                        return
                end

                -- trigger colorcolumn n characters before set value
                -- note: colorcolun is 0 indexed so we compare with -1
                local trigger_col = tonumber(target_colorcolumn) - 10
                local should_show_colorcolumn = col >= (trigger_col - 1)

                -- update if state changed
                if should_show_colorcolumn ~= last_colorcolumn_state then
                        if should_show_colorcolumn then
                                vim.o.colorcolumn = target_colorcolumn
                        else
                                vim.o.colorcolumn = ''
                        end
                        last_colorcolumn_state = should_show_colorcolumn
                end
        end
})

-- reset cache on filetype changes
vim.api.nvim_create_autocmd('FileType',{
        group = 'DynamicColorcolumn',
        callback = function()
                last_col = -1
                last_colorcolumn_state = nil
        end
})
