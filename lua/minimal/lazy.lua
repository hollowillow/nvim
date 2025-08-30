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
                {'folke/which-key.nvim'}, -- keymap guide
                {'nvim-tree/nvim-web-devicons'}, -- icons
                {'christoomey/vim-tmux-navigator'}, -- tmux integration
                {'williamboman/mason.nvim',build=':MasonUpdate'}, -- downloading lsps
                { import = 'plugins.colorscheme' }, -- colorschemes
                { import = 'plugins.oil' }, -- file explorer
                { import = 'plugins.fzf' }, -- fuzzy menu
                { import = 'plugins.arrow' }, -- project specific marks
                { import = 'plugins.leap' }, -- jump anywhere in file
                { import = 'plugins.mini' }, -- general quality of life
                { import = 'plugins.zen' }, -- focus mode
                { import = 'plugins.git' }, -- focus mode
                { import = 'plugins.lualine' }, -- status line
                { import = 'plugins.treesitter' }, -- syntax parsing
        },
  checker = { enabled = true },
})
