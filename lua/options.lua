vim.o.number = true
vim.o.relativenumber = true
vim.o.undofile = true -- Save undo history
vim.o.signcolumn = 'yes'
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.winborder = 'rounded'
vim.o.clipboard = 'unnamedplus'
vim.o.colorcolumn = '80'
vim.o.termguicolors = true
vim.o.scrolloff = 10
vim.o.showmode = false
vim.o.updatetime = 250
vim.o.cursorline = true
vim.o.splitright = true
vim.o.splitbelow = true

vim.cmd ':hi statusline guibg=NONE'

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
