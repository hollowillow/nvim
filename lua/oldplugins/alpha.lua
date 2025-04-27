return {

{
    "goolord/alpha-nvim",
    enabled = true,
    event = "VimEnter",
    config = function ()
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        -- Set header
        dashboard.section.header.val = {
            "                                                     ",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                     ",
        }
        dashboard.section.buttons.val = {
            dashboard.button( "n", "  New File" , "<cmd>ene <BAR> startinsert <CR>"),
            dashboard.button( "f", "  Find File" , "<cmd>Telescope find_files<CR>"),
            dashboard.button( "r", "  Recent Files" , "<cmd>Telescope oldfiles<CR>"),
            dashboard.button( "g", "  Grep Text" , "<cmd>Telescope live_grep<CR>"),
            dashboard.button( "l", "󰒲  Lazy" , "<cmd>Lazy<CR>"),
            dashboard.button( "c", "  Config" , "<cmd>edit $HOME/.config/nvim<CR>"),
            dashboard.button( "q", "  Quit NVIM" , "<cmd>qa<CR>"),
        }
        dashboard.section.footer.val = "hellooo"
        alpha.setup(dashboard.opts)
    end
}

}
