return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
      vim.keymap.set('n', '<leader>e', ':Oil<CR>', { desc = 'Open parent directory' }),
    },

    dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
    lazy = false,
  },
}
