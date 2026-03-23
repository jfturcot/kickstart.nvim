return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      latex = {
        enabled = false,
      },
    },
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && npm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
      -- Open preview in new browser window instead of tab
      vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
    end,
    config = function()
      -- Custom function to open preview in new window
      vim.cmd([[
        function! OpenMarkdownPreview(url)
          if has('mac')
            execute "silent ! open -n -a 'Google Chrome' --args --new-window " . a:url
          elseif has('unix')
            execute "silent ! google-chrome --new-window " . a:url
          endif
        endfunction
      ]])
    end,
    ft = { 'markdown' },
    keys = {
      { '<leader>mp', '<cmd>MarkdownPreview<CR>', desc = 'Markdown preview' },
    },
  },
}
