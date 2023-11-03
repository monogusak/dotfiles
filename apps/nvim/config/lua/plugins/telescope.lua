return {
  'nvim-telescope/telescope.nvim',
  cmd = {
    "Telescope",
  },
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<F1>", "<cmd>Telescope buffers<cr>",       desc = "buffers" },
    { "<F2>", "<cmd>Telescope find_files<cr>",    desc = "find_files" },
    { "<F3>", "<cmd>Telescope<cr>",               desc = "any" },
    { "<F4>", "<cmd>Telescope marks<cr>",         desc = "marks" },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
  end,
}
