--- https://github.com/JohnnyMorganz/StyLua
return {
    cmd = { "stylua", "--lsp", "--indent-type=Spaces" },
    filetypes = { "lua" },
    root_markers = {
        ".stylua.toml",
        "stylua.toml",
        ".editorconfig",
    },
    settings = {
        stylua = {
            indent_type = "Spaces",
            indent_width = 2,
        },
    },
}
