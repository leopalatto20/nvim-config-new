return {
  { 'Shatur/neovim-ayu' },
  { 'ellisonleao/gruvbox.nvim', priority = 1000 },
  {
    'ribru17/bamboo.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bamboo').setup {}
      require('bamboo').load()
    end,
  },
  {
    'ramojus/mellifluous.nvim',
    config = function()
      require('mellifluous').setup {} -- optional, see configuration section.
    end,
  },
  {
    'uhs-robert/oasis.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('oasis').setup {
        style = 'lagoon', -- Optional: Choose any style like `lagoon` or 'dune'.
      }
    end,
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker',
        transparent = false,
      }
      require('onedark').load()
    end,
  },
  {
    'wtfox/jellybeans.nvim',
    lazy = false,
    priority = 1000,
    opts = {}, -- Optional
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    opts = {
      styles = {
        transparency = true,
      },
    },
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
      transparent_background = true,
      flavour = 'mocha',
    },
  },
  {
    'sainnhe/gruvbox-material',
    config = function()
      vim.g.gruvbox_material_background = 'hard'
    end,
  },
  {
    'blazkowolf/gruber-darker.nvim',
    opts = {
      bold = false,
    },
  },
  {
    'zenbones-theme/zenbones.nvim',
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
    italic = false,
  },
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        -- optional configuration here
        transparent = true,
        style = {
          -- "none" is the same thing as default. But "italic" and "bold" are also valid options
          boolean = 'none',
          number = 'none',
          float = 'none',
          error = 'none',
          comments = 'none',
          conditionals = 'none',
          functions = 'none',
          headings = 'bold',
          operators = 'none',
          strings = 'none',
          variables = 'none',

          -- keywords
          keywords = 'none',
          keyword_return = 'none',
          keywords_loop = 'none',
          keywords_label = 'none',
          keywords_exception = 'none',

          -- builtin
          builtin_constants = 'none',
          builtin_functions = 'none',
          builtin_types = 'none',
          builtin_variables = 'none',
        },
        colors = {
          func = '#bc96b0',
          keyword = '#787bab',
          -- string = "#d4bd98",
          string = '#8a739a',
          -- string = "#f2e6ff",
          -- number = "#f2e6ff",
          -- string = "#d8d5b1",
          number = '#8f729e',
          -- type = "#dcaed7",
        },
      }
    end,
  },
}
