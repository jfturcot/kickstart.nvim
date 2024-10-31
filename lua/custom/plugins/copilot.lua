return {
  -- copilot
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
    },
  },

  -- copilot cmp source
  {
    'nvim-cmp',
    dependencies = {
      {
        'zbirenbaum/copilot-cmp',
        dependencies = 'copilot.lua',
        opts = {},
        config = function()
          require('copilot_cmp').setup()
        end,
      },
    },
  },

  -- copilot chat
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    opts = {
      -- debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      { '<leader>gcc', '<cmd>CopilotChatToggle<cr>', desc = 'Toggle CopilotChat' },
      { '<leader>gc?', '<cmd>CopilotChatExplain<cr>', desc = 'Explain selected code with CopilotChat' },
      { '<leader>gcr', '<cmd>CopilotChatReview<cr>', desc = 'Review selected code with CopilotChat' },
    },
  },
}
