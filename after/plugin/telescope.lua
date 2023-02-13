local builtin = require('telescope.builtin')

-- To open files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})  
vim.keymap.set('n', '<C-p>', builtin.git_files, {})  
    auto_close=false,

-- To grep seach in files
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")});	
end)

-- To open buffers
vim.keymap.set('n', '<leader>b', 
function() builtin.buffers({
    sort_mru=true, 
    ignore_current_buffer=true
}) end)
