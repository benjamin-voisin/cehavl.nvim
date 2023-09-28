vim.api.nvim_create_user_command('Cehavl', 'lua require("cehavl").cehavl_word_under_cursor()', {})
vim.keymap.set('n', '<leader>ch', ':Cehavl<cr>')
