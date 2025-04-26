return {

{
        "nvim-treesitter/nvim-treesitter",
        enabled = true,
        lazy = false,
        build = ":TSUpdate",
        keys = { {mode = 'n', "<c-space>", desc = "Increment Selection"}, {mode = 'x', "<bs>", desc = "Decrement Selection",}, },
        opts = {
                highlight = { enable = true,},
                indent = { enable = true,},
                ensure_installed = {
                        "bash",
                        "c",
                        "diff",
                        "html",
                        "markdown",
                        "markdown_inline",
                        "lua",
                        "printf",
                        "regex"
                },
        },
},

}
