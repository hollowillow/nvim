return {

-- colorscheme
{
        'sainnhe/gruvbox-material',
        priority = 1000,
        init = function ()
                vim.g.gruvbox_material_enable_italic = true
                vim.cmd.colorscheme('gruvbox-material')
        end
}

}
