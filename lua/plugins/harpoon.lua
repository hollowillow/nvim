return {{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    commit = 'e76cb03',
    -- event = "BufReadPost",
    -- opts = {
    --     menu = {
    --         width = vim.api.nvim_win_get_width(0) - 4,
    --     },
    --     settings = {
    --         save_on_toggle = false,
    --         save_on_change = true,
    --     },
    -- },
    config = function()
        -- require('harpoon').setup {
        --     settings = {
        --         key = get_key,
        --     }
        -- }
        -- local function get_key()
        --     local branch = vim.fn.system("git branch --show-current")
        --     local cwd = vim.loop.cwd()
        --     if branch then
        --         cwd = cwd .. "::" .. branch
        --     end
        --     return cwd
        -- end
        --
        -- local name = get_key()

        -- keybinds
        local keys = vim.keymap.set

        keys(
            'n',
            '<leader>H',
            function() require('harpoon'):list():add() end,
            { desc = 'Harpoon file' }
        )
        keys(
            'n',
            '<leader>h',
            function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end,
            { desc = 'Harpoon file' }
        )
    end,
    -- keys = function()
    --     local keys = {
    --         {
    --             "<leader>H",
    --             function() harpoon:list():add() end,
    --             desc = "Harpoon File"
    --         },
    --         {
    --             "<leader>hh",
    --             function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    --             desc = "Harpoon Quick Menu"
    --         },
    --     }
    --
    --     local mapping = { a = 1, s = 2, d = 3, f = 4 }
    --     for key, id in pairs(mapping) do
    --         table.insert(keys, {
    --             "<leader>h" .. key,
    --             function() harpoon:list():select(id) end,
    --             desc = "Harpoon to File " .. id,
    --         })
    --     end
    --
    --     return keys
    -- end,
}}
