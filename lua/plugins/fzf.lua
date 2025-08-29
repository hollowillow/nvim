return {

-- fuzzy file searching
{
        'ibhagwan/fzf-lua',
        keys = {
                {'<leader>ff','<cmd>FzfLua files<cr>',desc='Find files'},
                {'<leader>fg','<cmd>FzfLua live_grep<cr>',desc='Find live grep'},
                {'<leader>fb','<cmd>FzfLua buffers<cr>',desc='Find buffers'},
        },
        opts = {
                winopts = {
                        preview = {
                                hidden = true,
                        },
                },
                keymap = {
                        builtin = {
                                ["<C-e>"] = "preview-page-down",
                                ["<C-y>"] = "preview-page-up",
                                ["<C-t>"] = "toggle-preview",
                        },
                        fzf = {
                                ["ctrl-a"] = "select-all",
                                ["ctrl-d"] = "deselect-all",
                                ["ctrl-t"] = "toggle-preview",
                                ["tab"] = "toggle-out",
                                ["btab"] = "toggle-all",
                                ["ctrl-space"] = "clear-query",
                        }
                },
                fzf_opts = {
                        ["--style"] = "full",
                        ["--no-scrollbar"] = true,
                        ["--border"] = "rounded",
                        ["--preview-label-pos"] = "bottom",
                        ["--tmux"] = "center,80%,60%"
                }
        }
}

}
