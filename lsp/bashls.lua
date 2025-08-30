-- https://github.com/bash-lsp/bash-language-server

return {
        cmd = { vim.fn.stdpath("data") .. '/mason/bin/bash-language-server', 'start' },
        settings = {
                bashIde = {
                        globPattern = vim.env.GLOB_PATTERN or '*@(.sh|.inc|.bash|.command)',
                },
        },
        filetypes = { 'bash', 'sh' },
        root_markers = { '.git' },
}
