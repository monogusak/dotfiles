return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  event = "VeryLazy",
  lazy = false,
  dependencies = {
    {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
  },
  build = ':TSUpdate',
  config = function()
    -- [[ Configure Treesitter ]]
    -- See `:help nvim-treesitter`
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'lua',
        'python',
        'rust',
        'typescript',
        'tsx',
        'vimdoc',
        'vim',
        'dockerfile',
        "json",
        "json5",
      },

      auto_install = true,

      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
      },
      textobjects = {
      },
    }

  end
}
