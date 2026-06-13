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
                -- {'williamboman/mason.nvim',build=':MasonUpdate'}, -- downloading lsps
                { import = 'plugins.colorscheme' }, -- colorschemes
                -- { import = 'plugins.pick' }, -- fuzzy menu
                -- { import = 'plugins.leap' }, -- jump anywhere in file
                { import = 'plugins.mini' }, -- general quality of life
                { import = 'plugins.zen' }, -- focus mode
                { import = 'plugins.git' }, -- focus mode
                { import = 'plugins.lualine' }, -- status line
                { import = 'plugins.treesitter' }, -- syntax parsing
                -- { import = 'plugins.fzf' }, -- syntax parsing
                -- { import = 'plugins.harpoon' }, -- fzf
                -- { import = 'plugins.oil' }, -- file explorer
                --- NEW SETUP ---
                {'folke/which-key.nvim'}, -- keymap guide
                {'nvim-tree/nvim-web-devicons'}, -- icons
                {'christoomey/vim-tmux-navigator'}, -- tmux integration
                { import = 'pluginz.telescope' }, -- fuzzy file picker
                { import = 'pluginz.grapple' }, -- project based marks
                { import = 'pluginz.flash' }, -- fast file navigation
                { import = 'pluginz.oil' }, -- buffer based file explorer
                { import = 'pluginz.quicker' }, -- buffer based quickfix
                { import = 'pluginz.conform' }, -- buffer based quickfix
        },
  checker = { enabled = true },
})
