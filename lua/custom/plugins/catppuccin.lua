return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1001,

  init = function()
    vim.cmd.colorscheme 'catppuccin-frappe'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
