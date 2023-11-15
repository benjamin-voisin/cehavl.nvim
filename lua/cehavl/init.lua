local cehavl = {}

local function cehavl_word(word)
    local word_table = {}
    _ = word:gsub(".",function(c) table.insert(word_table,c) end)
    for k = 1, #word_table-1 do
        if (math.random() > 0.5) then
            local c1 = word_table[k]
            local c2 = word_table[k+1]
            word_table[k] = c2
            word_table[k+1] = c1
        end
    end
    for k = #word_table-1, 2, -1 do
        if (math.random() > 0.8) then
            local c1 = word_table[k]
            local c2 = word_table[k-1]
            word_table[k] = c2
            word_table[k-1] = c1
        end
    end
    local result = ""
    for k = 1, #word_table, 1 do
        result = result..word_table[k]
    end
    return result
end



function cehavl.setup(table)
    if table['default_keymaps'] then
        vim.keymap.set('n', '<leader>ch', ':Cehavl<cr>')
        vim.keymap.set('n', '<leader>cha', ':CehavlAll<cr>')
    end
    cehavl.is_setup = true
end

function cehavl.cehavl_word_under_cursor()
    local current_word = vim.call('expand', '<cword>')
    local new_word = cehavl_word(current_word)
    vim.cmd("normal! ciw" ..  new_word)
end

function cehavl.cehavl_all_occurences_under_cursor()
    local current_word = vim.call('expand', '<cword>')
    local new_word = cehavl_word(current_word)
    vim.lsp.buf.rename(new_word)
end

return cehavl
