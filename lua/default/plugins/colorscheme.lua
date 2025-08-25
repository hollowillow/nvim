return {

{
        'sainnhe/gruvbox-material',
        enabled = true,
        lazy = false,
        priority = 1000,
        config = function () vim.g.gruvbox_material_enable_italic = true vim.cmd.colorscheme('gruvbox-material') end,
},

{'sainnhe/everforest', enabled = true, lazy = true,},
{'sainnhe/edge', enabled = true, lazy = true,},
{'sainnhe/sonokai', enabled = true, lazy = true,},
{'shaunsingh/nord.nvim', enabled = true, lazy = true,},
{'shaunsingh/solarized.nvim', enabled = true, lazy = true,},
{'folke/tokyonight.nvim', enabled = true, lazy = true,},
{'catppuccin/nvim', enabled = true, lazy = true,},
{'rebelot/kanagawa.nvim', enabled = true, lazy = true,},
{'xero/evangelion.nvim', enabled = true, lazy = true,},

{
        'arizzoni/wal.nvim',
        enabled = true,
        lazy = true,
        config = function()
                vim.g.wal_path = "$HOME/.cache/wal/colors.json"
        end,
},

}
