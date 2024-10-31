return {
  'kdheepak/lazygit.nvim',
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
  },
  config = function()
    -- set env
    local env = vim.env -- for conciseness

    if vim.fn.executable 'nvr' == 1 then
      env.GIT_EDITOR = "nvr --remote-wait +'set bufhidden=delete'"
    end
  end,
}
