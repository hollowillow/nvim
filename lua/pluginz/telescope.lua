return {
    {
        "nvim-telescope/telescope.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "nix shell nixpkgs#gnumake nixpkgs#gcc -c make",
            },
        },
        config = function()
            -- config
            require("telescope").setup({
                defaults = {
                    layout_strategy = "flex",
                    path_display = { "filename_first" },
                    dynamic_preview_title = true,
                    color_devicons = true,
                    mappings = {
                        i = {
                            ["<C-j>"] = "move_selection_next",
                            ["<C-k>"] = "move_selection_previous",
                            ["<S-Tab>"] = "toggle_all",
                            -- ["<esc>"] = 'close',
                        },
                    },
                },
                pickers = {
                    -- find_files = { theme = "ivy" }
                },
                extensions = {},
            })

            -- keybinds
            local builtin = require("telescope.builtin")
            local keys = vim.keymap.set

            keys("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            keys("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
            keys("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
            keys("n", "<leader>fm", builtin.man_pages, { desc = "Telescope man pages" })
            keys("n", "<leader>fq", builtin.quickfix, { desc = "Telescope quickfix" })

            -- extensions
            require("telescope").load_extension("fzf")
        end,
    },
    -- {
    --     'nvim-telescope/telescope-ui-select.nvim',
    --     config = function()
    --         require('telescope').load_extension('ui-select')
    --     end,
    -- },
    -- {
    --     'nvim-telescope/telescope-frecency.nvim',
    --     config = function()
    --         require('telescope').load_extension('frecency')
    --     end,
    -- },
    -- {
    --     'nvim-telescope/telescope-live-grep-args.nvim',
    --     config = function()
    --         require('telescope').load_extension('live_grep_args')
    --     end,
    -- }
}
