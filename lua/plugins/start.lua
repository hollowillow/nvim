return {

-- minimal starter screen
{
        'echasnovski/mini.starter',
        version = '*',
        cond = false,
        opts = {
                autoopen = true,
                items = {
                        {name='Lazy',action=':Lazy',section='Quick Actions'},
                        {name='New',action=':enew',section='Quick Actions'},
                        {name='Files',action=':Pick files',section='Quick Actions'},
                        {name='Grep',action=':Pick grep_live',section='Quick Actions'},
                        {name='Recent',action=':Pick oldfiles',section='Quick Actions'},
                        {name='Config',action=':e ~/.config/nvim/init.lua',section='Quick Actions'},
                        {name='Session',action=':source ~/.local/share/nvim/sessions/default',section='Quick Actions'},
                        {name='Quit',action=':q',section='Quick Actions'}
                },
                footer = "Neovim :: Made For Nerds"
        }
},

-- fancy starter screen
{
  "folke/snacks.nvim",
  cond = true,
  event = 'VimEnter',
  keys = {
          {'<C-w>s',function() vim.cmd('split | lua Snacks.dashboard({ win = 0 })') end,desc='Open dashboard in split'},
          {'<C-w>v',function() vim.cmd('vsplit | lua Snacks.dashboard({ win = 0 })') end,desc='Open dashboard in vsplit'},
          {'<leader><leader>',function() vim.cmd('enew | lua Snacks.dashboard({ win = 0 })') end,desc='Open dashboard'},
  },
  opts = { dashboard = {
        preset = {
                keys = {
                        { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy"},
                        { icon = " ", key = "n", desc = "New", action = ":enew | startinsert" },
                        { icon = " ", key = "f", desc = "Files", action = ":Pick files" },
                        { icon = " ", key = "g", desc = "Grep", action = ":Pick grep_live" },
                        { icon = " ", key = "r", desc = "Recent", action = ":Pick recent" },
                        { icon = " ", key = "c", desc = "Config", action = ":e ~/.config/nvim/init.lua" },
                        { icon = " ", key = "s", desc = "Session", action = ":source ~/.local/share/nvim/sessions/default" },
                        { icon = " ", key = "q", desc = "Quit", action = ":q" }
                },
        },
        sections = {
                pane_gap = 10,
                {
                        enabled = function() return vim.o.lines > 40 end,
                        section = 'terminal',
                        cmd = 'ascii-image-converter --color --complex --dimensions 50,25 $(find $HOME/ascii -type f | shuf -n 1)',
                        random = 1,
                        width = 50,
                        height = 25,
                        indent = 5,
                        padding = 1,
                        align = 'center',
                },

                {
                        section = "keys",
                },

                {
                        pane = 2,
                        icon = " ",
                        title = "Git Status",
                        section = "terminal",
                        enabled = function()
                                return Snacks.git.get_root() ~= nil and vim.o.columns > 140
                        end,
                        cmd = "git status --short --branch --renames",
                        height = 30,
                        padding = 1,
                        ttl = 5 * 60,
                        indent = 3,
                },
                {
                        section = 'startup',
                        padding = 2,
                }
        }
    }
  }
}

}
