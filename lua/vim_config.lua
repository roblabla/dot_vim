-- Some presentational settings
vim.opt.number = true -- Show line number to the left of the buffer
vim.opt.showmatch = true -- Highlight matching brackets
vim.opt.visualbell = true -- Don't friggin beep
vim.opt.cc = '80' -- Show 80 character bar
vim.opt.termguicolors = true -- Enable 24-bit terminal colors

-- Show invisible characters.
vim.opt.listchars = { eol = '$', tab = ">-", trail = "~", extends = ">", precedes = "<" }
vim.opt.list = true

-- Behavior
vim.opt.wildmode = {"longest", "list"}
vim.opt.wildignorecase = true
vim.opt.ignorecase = true
vim.opt.clipboard = 'unnamed'
vim.opt.autowriteall = true
vim.opt.swapfile = false
vim.opt.mouse = "a"

vim.opt.sts = 4
vim.opt.ts = 4
vim.opt.sw = 4
vim.opt.et = true

vim.opt.startofline = true

vim.opt.foldmethod = 'indent'
vim.opt.foldcolumn = "1"
vim.opt.foldlevelstart = 20

vim.opt.encoding = 'utf8'

vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"c", "cpp", "rust"},
  command = "setl expandtab shiftwidth=4 softtabstop=4 tabstop=4"
})

vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"coffee", "html", "hbs", "javascript", "javascript.jsx", "jade", "json", "lua"},
  command = "setl expandtab shiftwidth=2 softtabstop=2 tabstop=2"
})

vim.g.mapleader = " "

-- Disable filetype.vim
vim.g.did_load_filetypes = 0
vim.g.do_filetype_lua = 1
