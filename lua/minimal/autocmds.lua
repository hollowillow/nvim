-- AUTOMATICALLY CHANGE CWD TO PROJECT ROOT
-- project root is determined by the following array of files
local root_names = {'.git', 'Makefile'}

vim.api.nvim_create_augroup('AutoRoot',{clear = true})
vim.api.nvim_create_autocmd('BufEnter',{
        group = 'AutoRoot',
        callback = function()
                -- get directory path to start search from
                local path = vim.api.nvim_buf_get_name(0)
                if path == '' then return end -- exit early on empty buffer
                path = vim.fs.dirname(path)

                -- search upward for root directory
                local root_file = vim.fs.find(root_names,{path=path,upward=true})[1]
                if root_file == nil then return end -- exit early if no root file

                -- set current directory
                local root = vim.fs.dirname(root_file)
                vim.fn.chdir(root)
        end
})

-- AUTOMATICALLY SET COLORCOLUMN BASED ON FILETYPE
-- ccolumn is determined by the following table, use '' to disable
local ft_ccolumn = {
        text = '',
        markdown = '120',
        rust = '100',
}
-- if ccolumn is undefined for filetype use default
local default_ccolumn = '80'

vim.api.nvim_create_augroup('DynamicCColumn', { clear = true })
vim.api.nvim_create_autocmd('Filetype',{
        group = 'DynamicCColumn',
        callback = function()
                -- get filetype settings
                local target_ccolumn = ft_ccolumn[vim.o.filetype] or default_ccolumn
                if target_ccolumn == '' then return end -- exit early if no column
                vim.o.colorcolumn = target_ccolumn -- else set column
        end
})

-- AUTOMATICALLY UNSET RELATIVENUMBER IN INSERT MODE
vim.api.nvim_create_augroup('DynamicNumbers', { clear = true })
vim.api.nvim_create_autocmd({'InsertEnter', 'InsertLeave'}, {
    group = 'DynamicNumbers',
    callback = function(event)
        vim.o.relativenumber = (event.event == 'InsertLeave')
    end,
})

-- -- HIGHLIGHT TRAILING SPACES IN NORMAL MODE
-- -- get the error color for your colorscheme
-- local trail_highlight = vim.fn.synIDattr(vim.fn.hlID('Error'), 'fg')
--
-- -- set the regex pattern for trailing spaces
-- vim.fn.matchadd('TrailingWhitespace', '\\s\\+$')
--
-- -- always enable when entering neovim
-- -- dynamically disable when in insert mode
-- vim.api.nvim_create_augroup('HighlightTrail', { clear = true })
-- vim.api.nvim_create_autocmd({'InsertEnter','InsertLeave','VimEnter'},{
--         group = 'HighlightTrail',
--         callback = function(event)
--                 -- highlight when not in insert mode
--                 if (event.event == 'InsertEnter') == true then
--                         vim.api.nvim_set_hl(0, 'TrailingWhitespace', { bg = 'NONE' })
--                 else
--                         vim.api.nvim_set_hl(0, 'TrailingWhitespace', { bg = trail_highlight })
--                 end
--         end
-- })
