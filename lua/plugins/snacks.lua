return {

{
        "folke/snacks.nvim",
        enabled = true,
        event = "VimEnter",
        ---@type snacks.Config
        opts = {
                dashboard = {
                        width = 60,
                        pane_gap = 16,
                        sections = {
                                {
                                        pane = 1,
                                        padding = 5,
                                        align = 'center',
                                        {
                                                enabled = function() return vim.o.lines > 40 end,
                                                section = 'terminal',
                                                cmd = 'ascii-image-converter --color -H30 -c $(find "$HOME/.config/nvim/data/ascii/" -type f | shuf -n1)',
                                                height = 30,
                                                padding = 2,
                                                align = 'center',
                                        },
                                        {
                                                enabled = function() return not (vim.o.lines > 40) and vim.o.columns > 70 end,
                                                section = 'terminal',
                                                cmd = 'ascii-image-converter --color -H24 -c $(find "$HOME/.config/nvim/data/ascii/" -type f | shuf -n1)',
                                                height = 24,
                                                padding = 2,
                                                indent = 13,
                                                align = 'center',
                                        },
                                        {
                                                enabled = function() return not (vim.o.columns > 140) and vim.o.lines > 40 end,
                                                section = 'keys',
                                                padding = 2,
                                                align = 'left',
                                                gap = 1
                                        },
                                        {
                                                enabled = function() return not (vim.o.columns > 140) and vim.o.lines > 40 end,
                                                icon = ' ',
                                                title = 'Recent Files',
                                        },
                                        {
                                                enabled = function() return not (vim.o.columns > 140) and vim.o.lines > 40 end,
                                                section = 'recent_files',
                                                opts = { limit = 5 },
                                                align = 'left',
                                                padding = 2,
                                        },
                                        {
                                                enabled = function() return not (vim.o.columns > 140) and vim.o.lines > 40 end,
                                                section = 'startup',
                                                padding = 2,
                                        },
                                },
                                {
                                        pane = 2,
                                        padding = 5,
                                        align = 'center',
                                        {
                                                enabled = function() return vim.o.columns > 140 or not (vim.o.lines > 40) end,
                                                section = 'keys',
                                                padding = 2,
                                                align = 'left',
                                                gap = 1,
                                        },
                                        {
                                                enabled = function() return vim.o.columns > 140 or not (vim.o.lines > 40) end,
                                                icon = ' ',
                                                title = 'Recent Files',
                                        },
                                        {
                                                enabled = function() return vim.o.columns > 140 or not (vim.o.lines > 40) end,
                                                section = 'recent_files',
                                                opts = { limit = 5 },
                                                align = 'left',
                                                padding = 2,
                                        },
                                        {
                                                enabled = function() return vim.o.columns > 140 or not (vim.o.lines > 40) end,
                                                section = 'startup',
                                                padding = 2,
                                        },
                                },
                        },
                        },
        }
},

}
