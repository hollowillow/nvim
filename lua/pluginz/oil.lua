return {
    {
        "stevearc/oil.nvim",
        config = function()
            -- config
            require("oil").setup({
                default_file_explorer = true,
                columns = { "icon" },
                skip_confirm_for_simple_edits = true,
                view_options = {
                    show_hidden = true,
                },
            })

            -- keybinds
            local builtin = require("oil")
            local keys = vim.keymap.set

            keys("n", "-", builtin.open, { desc = "Oil" })
            keys("n", "<leader>e", builtin.open, { desc = "Oil" })
        end,
    },
}
