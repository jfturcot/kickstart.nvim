return {
  'vim-test/vim-test',
  dependencies = {
    'preservim/vimux',
  },
  keys = {
    { '<leader>t', '<cmd>TestNearest<cr>', desc = 'NeoTree' },
    { '<leader>T', '<cmd>TestFile<cr>', desc = 'NeoTree' },
  },
  config = function()
    local cmd = vim.cmd
    cmd 'let test#strategy = "vimux"'
  end,
}
