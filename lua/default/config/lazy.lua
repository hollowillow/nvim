local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
        spec = {
                { 'folke/which-key.nvim' },
                { 'nvim-tree/nvim-web-devicons' },

                -- plugin modules
                -- aesthetic
                { import = 'default.plugins.colorscheme' }, -- enable gruvbox
                { import = 'default.plugins.lualine' }, -- status line
                { import = 'default.plugins.zen' }, -- focus mode
                { import = 'default.plugins.start' }, -- focus mode
                { 'echasnovski/mini.indentscope', version = '*', opts = {}, },
                { 'echasnovski/mini.diff', version = '*', opts = { view = { style = 'number' }, }, },

                -- buffer navigation
                { import = 'default.plugins.oil' }, -- file explorer
                { import = 'default.plugins.picker' }, -- picker menu
                { import = 'default.plugins.arrow' }, -- project specific marks

                -- lsp
                { import = 'default.plugins.treesitter' }, -- syntax parsing
                { import = 'default.plugins.lsp' }, -- language server
                { 'echasnovski/mini.completion', version = '*', opts = {}, },
                -- { 'echasnovski/mini.trailspace', version = '*', opts = {}, },

                -- motions
                { import = 'default.plugins.leap' }, -- jump anywhere in file
                { import = 'default.plugins.mini' }, -- general motions
                { 'christoomey/vim-tmux-navigator' }, -- tmux integration
        },
  checker = { enabled = true },
})
