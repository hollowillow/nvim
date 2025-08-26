return {

-- colorscheme
{
        'sainnhe/gruvbox-material',
        cond = true,
        priority = 1000,
        init = function ()
                vim.g.gruvbox_material_enable_italic = true
                vim.cmd.colorscheme('gruvbox-material')
        end
}

}
