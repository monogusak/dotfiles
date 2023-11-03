
local js = {
  'billyvg/tigris.nvim',
  --build: './install.sh',
  ft = 'js',
};
local pug_coc = {
  -- https://github.com/yaegassy/coc-pug
};
local pug = {
  'digitaltoad/vim-pug',
  ft = 'pug',
};
local stylus = {
  -- stylus
  'ChiliConSql/neovim-stylus',
  ft = 'styl',
};
local toml = {
  -- toml
  'cespare/vim-toml',
  ft = 'toml',
}
local markdown_previe = {
  'kat0h/bufpreview.vim',
  build = 'deno task prepare',
  ft = {
    "markdown",
  },
  dependencies = {
    'vim-denops/denops.vim'
  }
};

return {
  js,
  markdown_previe,
  pug,
--pug_coc,
  stylus,
  toml,
}
