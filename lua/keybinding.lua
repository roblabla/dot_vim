vim.keymap.set('n', '<Leader>v', ':vsp<CR>', { silent = true }) vim.keymap.set('n', '<Leader>p', function()
    if vim.o.list then
        vim.o.list = false
        vim.o.paste = true
        vim.o.number = false
        vim.o.relativenumber = false
        vim.o.foldcolumn = '0'
        vim.o.mouse = ''
    else
        vim.o.list = true
        vim.o.paste = false
        vim.o.number = true
        vim.o.relativenumber = true
        vim.o.foldcolumn = '1'
        vim.o.mouse = 'a'
    end
end)

vim.keymap.set('n', '<Leader>o', function()
  require('telescope.builtin').find_files({find_command = { "rg", "--ignore", "--hidden", "--files", "--glob=!.git" }})
end)
vim.keymap.set('n', '<Leader>/', function()
  require('telescope.builtin').live_grep({additional_args = function() return { "--hidden" } end})
end)
vim.keymap.set('n', '<Tab>', ':bn<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':bp<CR>', { silent = true })
vim.keymap.set('n', '<Leader>x', ':bp|bd #<CR>', { silent = true })
