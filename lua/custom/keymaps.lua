return {
  vim.keymap.set('v', '>', '>gv', { desc = 'Reselect visual block after indent' }),
  vim.keymap.set('v', '<', '<gv', { desc = 'Reselect visual block after outdent' }),

  vim.keymap.set('n', '<left>', '<cmd>bp<CR>', { desc = 'Go to previous buffer' }),
  vim.keymap.set('n', '<right>', '<cmd>bn<CR>', { desc = 'Go to next buffer' }),

  vim.keymap.set('n', '<leader>db', '<cmd>DBUI<CR>', { desc = 'Dadbod UI' }),
}
