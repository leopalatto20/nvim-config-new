require 'options'
require 'config.lazy'
require 'keymaps'

vim.o.autoread = true
vim.cmd.colorscheme 'rose-pine'

vim.api.nvim_create_autocmd({ 'FocusGained', 'BufEnter' }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = '*',
})
