return {
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-completion',
  'kristijanhusak/vim-dadbod-ui',
  keys = {
    { '<leader>zz', '<cmd>DBUIToggle<cr>', desc = 'Dadbod UI' },
  },
  -- config = function()
  --   vim.keymap.set('n', '<leader>db', '<CMD>DBUIToggle<CR>', { desc = 'Dadbod UI' })
  -- end,
}
