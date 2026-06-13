-- Array of file names indicating root directory
local root_names = { '.git', 'Makefile', 'flake.nix' }
local root_cache = {}

vim.api.nvim_create_augroup('AutoRoot', { clear = true })
vim.api.nvim_create_autocmd('BufEnter', {
    group = 'AutoRoot',
    callback = function()
        -- Get directory path to start search from
          local path = vim.api.nvim_buf_get_name(0)
          if path == '' then return end
          path = vim.fs.dirname(path)

          -- Try cache and resort to searching upward for root directory
          local root = root_cache[path]
          if root == nil then
            local root_file = vim.fs.find(root_names, { path = path, upward = true })[1]
            if root_file == nil then return end
            root = vim.fs.dirname(root_file)
            root_cache[path] = root
          end

          -- Set current directory
          vim.fn.chdir(root)
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
