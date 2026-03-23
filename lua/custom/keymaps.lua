return {
  vim.keymap.set('v', '>', '>gv', { desc = 'Reselect visual block after indent' }),
  vim.keymap.set('v', '<', '<gv', { desc = 'Reselect visual block after outdent' }),

  vim.keymap.set('n', '<left>', '<cmd>bp<CR>', { desc = 'Go to previous buffer' }),
  vim.keymap.set('n', '<right>', '<cmd>bn<CR>', { desc = 'Go to next buffer' }),

  vim.keymap.set('n', '<leader>db', '<cmd>DBUI<CR>', { desc = 'Dadbod UI' }),

  -- Copy buffer path to clipboard
  vim.keymap.set('n', '<leader>bcc', function()
    local path = vim.fn.expand '%:.'
    vim.fn.setreg('+', path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
  end, { desc = 'Copy relative path of the buffer to clipboard' }),
  vim.keymap.set('n', '<leader>bca', function()
    local path = vim.fn.expand '%'
    vim.fn.setreg('+', path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
  end, { desc = 'Copy absolute path of the buffer to clipboard' }),

  -- Yank to clipboard
  vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Yank to clipboard' }),
  vim.keymap.set({ 'n', 'v' }, '<leader>yy', [["+yy]], { desc = 'Yank current line to clipboard' }),
  vim.keymap.set({ 'n', 'v' }, '<leader>Y', [["+Y]], { desc = 'Yank to the end of line to clipboard' }),

  -- Window Resizing
  vim.keymap.set('n', '<C-Up>', '<cmd>resize +5<CR>', { desc = 'Increase window height' }),
  vim.keymap.set('n', '<C-Down>', '<cmd>resize -5<CR>', { desc = 'Decrease window height' }),
  vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +5<CR>', { desc = 'Increase window width' }),
  vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -5<CR>', { desc = 'Decrease window width' }),
}
