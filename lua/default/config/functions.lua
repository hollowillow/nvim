function markdown_wordcount()
    if vim.bo.filetype == "markdown" then
            -- Get the content of the current buffer
            local lines = vim.fn.getline(1, '$')
            
            -- Find the start and end of the YAML front matter
            local start_line = 0
            local end_line = 0

            for i, line in ipairs(lines) do
                if line:match('^%s*---%s*$') then
                    if start_line == 0 then
                        start_line = i  -- Found the start of YAML front matter
                    else
                        end_line = i  -- Found the end of YAML front matter
                        break
                    end
                end
            end

            -- If front matter exists, adjust the lines to consider for word count
            if start_line > 0 and end_line > 0 then
                -- Count words only in the content after the front matter
                lines = vim.fn.getline(end_line + 1, '$')
            end

            -- Concatenate lines and count words
            local text = table.concat(lines, " ")
            local word_count = 0

            -- Simple word counting logic (based on spaces)
            for word in text:gmatch('%S+') do
                word_count = word_count + 1
            end

            return "Words: " .. word_count
    else
            return ''
    end
end
