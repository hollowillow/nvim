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
                { import = 'minimal.plugins.colorscheme' }, -- enable gruvbox
                { import = 'minimal.plugins.lualine' }, -- status line
                { import = 'minimal.plugins.zen' }, -- focus mode
                { import = 'minimal.plugins.start' }, -- focus mode
                { 'echasnovski/mini.indentscope', version = '*', opts = {}, },
                { 'echasnovski/mini.diff', version = '*', opts = { view = { style = 'number' }, }, },

                -- buffer navigation
                { import = 'minimal.plugins.oil' }, -- file explorer
                { import = 'minimal.plugins.picker' }, -- picker menu
                { import = 'minimal.plugins.arrow' }, -- project specific marks

                -- lsp
                { import = 'minimal.plugins.treesitter' }, -- syntax parsing
                { import = 'minimal.plugins.lsp' }, -- language server
                { 'echasnovski/mini.completion', version = '*', opts = {}, },
                -- { 'echasnovski/mini.trailspace', version = '*', opts = {}, },

                -- motions
                { import = 'minimal.plugins.leap' }, -- jump anywhere in file
                { import = 'minimal.plugins.mini' }, -- general motions
                { 'christoomey/vim-tmux-navigator' }, -- tmux integration
        },
  checker = { enabled = true },
})
