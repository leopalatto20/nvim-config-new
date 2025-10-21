local opts = { noremap = true, silent = true }

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', 'x', '"_x', opts)

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>')

local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>tf', ':TailwindFoldToggle<CR>', opts)

vim.keymap.set('n', '<leader>ft', ':TodoTelescope<CR>', opts)

vim.keymap.set('n', '<leader>e', ':Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>E', ':Neotree toggle<CR>', { desc = 'Toggle neotree' })

vim.keymap.set('n', '<leader>UC', ':Telescope colorscheme<CR>', { desc = 'Telescope colorscheme' })

vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically

-- load the session for the current directory
vim.keymap.set('n', '<leader>qs', function()
  require('persistence').load()
end)

-- select a session to load
vim.keymap.set('n', '<leader>qS', function()
  require('persistence').select()
end)

-- load the last session
vim.keymap.set('n', '<leader>ql', function()
  require('persistence').load { last = true }
end)

-- stop Persistence => session won't be saved on exit
vim.keymap.set('n', '<leader>qd', function()
  require('persistence').stop()
end)
