return {
  {
    -- colorscheme
    'joshdick/onedark.vim',
    lazy = false,
  }, {
    -- 色を表示 #fef
    'brenoprata10/nvim-highlight-colors',
    lazy = false,
    config = function()
      require('nvim-highlight-colors').setup {
        render = 'background', -- or 'foreground' or 'first_column'
        enable_named_colors = true,
        enable_tailwind = false,
        custom_colors = {
        --{label = '%-%-theme%-font%-color', color = '#fff'},
        }
      }
    end
  }, {
    -- インデントの色
    -- --
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }

      local hooks = require "ibl.hooks"
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed",    { fg = "#C08080" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#B0A080" })
        vim.api.nvim_set_hl(0, "RainbowBlue",   { fg = "#80A0C0" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#C09080" })
        vim.api.nvim_set_hl(0, "RainbowGreen",  { fg = "#A0B090" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#A080B0" })
        vim.api.nvim_set_hl(0, "RainbowCyan",   { fg = "#80A0B0" })
      end)
      require("ibl").setup { indent = { highlight = highlight } }
    end
  }, {
    -- カラフル括弧
    'HiPhish/rainbow-delimiters.nvim',
    lazy = false,
    config = function()
      local rainbow_delimiters = require 'rainbow-delimiters'
      vim.g.rainbow_delimiters = {
        -- global : バッファ全体を対象とする単純なロジック．
        -- local  : カーソル位置に基づく複雑なロジック．(つまりどういうこと？)
        strategy = {
          [''] = rainbow_delimiters.strategy['global'],
          vim = rainbow_delimiters.strategy['local'],
        },
        -- rainbow-delimiters: 括弧とかの記号
        -- rainbow-blocks: begin/end みたいなやつ？
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks',
        },
        highlight = {
          'RainbowRed',
          'RainbowYellow',
          'RainbowBlue',
          'RainbowOrange',
          'RainbowGreen',
          'RainbowViolet',
          'RainbowCyan',
        -- インデントと共通にする
        --'RainbowDelimiterRed',
        --'RainbowDelimiterYellow',
        --'RainbowDelimiterBlue',
        --'RainbowDelimiterOrange',
        --'RainbowDelimiterGreen',
        --'RainbowDelimiterViolet',
        --'RainbowDelimiterCyan',
        },
      }
    end
  }
}
