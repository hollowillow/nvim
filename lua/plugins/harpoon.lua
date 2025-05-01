return {

-- {'ThePrimeagen/harpoon', branch = 'harpoon2', enabled = true, lazy = false, opts = {}, keys = function() { { mode ='n', '<leader>h', function() require("harpoon"):list():add() end, desc = 'Harpoon add' }, { mode ='n', '<leader>h', function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = 'Harpoon list' }, for i = 1, 5 do {mode ='n', '<leader>h', function() require("harpoon"):list():add() end, desc = 'Harpoon add'}, }},
{
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        enabled = true,
        lazy = true,
        opts = { setting = { save_on_toggle = true, }, },
        keys = {
                {mode = 'n', "<leader>hH", function() require("harpoon"):list():add() end, desc = "Harpoon File",},
                {mode = 'n', "<leader>hh", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Harpoon Quick Menu",},
                {mode = 'n', "<leader>ha", function() require("harpoon"):list():select(1) end, desc = "Harpoon to File 1",},
                {mode = 'n', "<leader>hs", function() require("harpoon"):list():select(2) end, desc = "Harpoon to File 2",},
                {mode = 'n', "<leader>hd", function() require("harpoon"):list():select(3) end, desc = "Harpoon to File 3",},
                {mode = 'n', "<leader>hf", function() require("harpoon"):list():select(4) end, desc = "Harpoon to File 4",},
                {mode = 'n', "<leader>hg", function() require("harpoon"):list():select(5) end, desc = "Harpoon to File 5",},
                {mode = 'n', "<leader>hj", function() require("harpoon"):list():next() end, desc = "Harpoon next",},
                {mode = 'n', "<leader>hk", function() require("harpoon"):list():prev() end, desc = "Harpoon prev",},
        },
},

-- dependencies
{'nvim-lua/plenary.nvim', lazy = false,}

}
