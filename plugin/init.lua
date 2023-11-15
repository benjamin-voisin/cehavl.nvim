vim.api.nvim_create_user_command('Cehavl', 'lua require("cehavl").cehavl_word_under_cursor()', {})

vim.api.nvim_create_user_command('CehavlAll', 'lua require("cehavl").cehavl_all_occurences_under_cursor()', {})
