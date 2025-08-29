return {

-- buffer file explorer
{
        'stevearc/oil.nvim',
        keys = {
                {'-','<cmd>Oil<cr>',desc='Oil'}
        },
        opts = {
                default_file_explorer = true,
                view_options = { show_hidden = true },
                columns = { 'icon' }
        }
}

}
