return {

{
        "nvim-lualine/lualine.nvim",
        enabled = true,
        lazy = false,
        opts = {
                sections = {
                        lualine_a = {'mode'},
                        lualine_b = {'branch', 'diff', 'diagnostics'},
                        lualine_c = {'filename',},
                        lualine_x = {'filetype', 'searchcount',},
                        lualine_y = {'progress', markdown_wordcount,},
                        lualine_z = {'location'}
                },
                extensions = {
                        'lazy',
                        'mason',
                        'man',
                        'oil',
                }
        },
},

-- optional dependencies
{'nvim-tree/nvim-web-devicons', enabled = true, lazy = true,},

}
