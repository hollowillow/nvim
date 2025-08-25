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
                { 'christoomey/vim-tmux-navigator' },

                -- git integration
                { 'lewis6991/gitsigns.nvim' },
                { 'tpope/vim-fugitive' },

                -- mini plugins
                { 'echasnovski/mini.ai', version = '*', opts = {}, },
                { 'echasnovski/mini.bracketed', version = '*', opts = {}, },
                { 'echasnovski/mini.surround', version = '*', opts = {}, },
                { 'echasnovski/mini.pairs', version = '*', opts = {}, },
                { 'echasnovski/mini.splitjoin', version = '*', opts = {}, },
                { 'echasnovski/mini.indentscope', version = '*', opts = {}, },
                { 'echasnovski/mini.completion', version = '*', opts = {}, },
                { 'echasnovski/mini.trailspace', version = '*', opts = {}, },

                -- plugin modules
                { import = "minimal.plugins.colorscheme" },
                { import = "minimal.plugins.oil" },
                { import = "minimal.plugins.picker" },
                { import = "minimal.plugins.visits" },
                { import = "minimal.plugins.zen" },
                { import = "minimal.plugins.lualine" },
                { import = "minimal.plugins.treesitter" },
                { import = "minimal.plugins.lsp" },
                { import = "minimal.plugins.sessions" },
        },
  checker = { enabled = true },
})
