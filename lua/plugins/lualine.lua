-- custom wordcount module
local function get_wordcount()
  if vim.fn.mode():find("[vV]") then
    word_count = vim.fn.wordcount().visual_words
  else
    word_count = vim.fn.wordcount().words
  end
  return word_count .. " " .. "words"
end

local function is_text()
  return vim.bo.filetype == "markdown" or vim.bo.filetype == "text"
end

return {

-- fancy status line
{
        "nvim-lualine/lualine.nvim",
        cond = true,
        opts = {
                sections = {
                        lualine_a = {'mode'},
                        lualine_b = {'branch', 'diff', 'diagnostics'},
                        lualine_c = {'filename',},
                        lualine_x = {'filetype', 'searchcount',},
                        lualine_y = {'progress', { get_wordcount, cond = is_text }, },
                        lualine_z = {'location'}
                },
                extensions = {
                        'lazy',
                        'mason',
                        'man',
                        'oil'
                }
        }
}

}
