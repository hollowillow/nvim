-- toggle boolean values in line

function EscapePattern(str)
    return str:gsub("([%.%-%+%*%?%[%]%^%$%(%)%{%}|%\\])", "%%%1")
end

function ToggleBool(str1, str2)
    local current_line = vim.api.nvim_get_current_line()
    local escaped_str1 = EscapePattern(str1)
    local escaped_str2 = EscapePattern(str2)

    if current_line:find(escaped_str1) then
        local new_line = current_line:gsub(escaped_str1, escaped_str2)
        vim.api.nvim_set_current_line(new_line)
    elseif current_line:find(escaped_str2) then
        local new_line = current_line:gsub(escaped_str2, escaped_str1)
        vim.api.nvim_set_current_line(new_line)
    end
end

vim.api.nvim_create_user_command(
        'ToggleBool',
        function(opts)
                if #opts.fargs == 2 then
                        ToggleBool(opts.fargs[1], opts.fargs[2])
                else
                        print("Usage: :ToggleBool <string1> <string2>")
                end
        end,
        { nargs = '*', desc = 'Toggle between two strings' }
)
