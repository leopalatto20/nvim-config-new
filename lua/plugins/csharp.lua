return {
  {
    'williamboman/mason.nvim',
    opts = {
      registries = {
        'github:mason-org/mason-registry',
        'github:Crashdummyy/mason-registry',
      },
      ensure_installed = {
        'roslyn',
        'rzls',
      },
    },
  },
  {
    'seblyng/roslyn.nvim',
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    ft = { 'cs', 'razor' },
    opts = {
      -- your configuration comes here; leave empty for default settings
    },
  },
}
