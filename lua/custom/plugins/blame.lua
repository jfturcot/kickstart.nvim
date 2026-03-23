return {
  'FabijanZulj/blame.nvim',
  config = function()
    require('blame').setup {
      date_format = '%Y-%m-%d',
      virtual_style = 'right_align',
      views = {
        window = {
          width = 60,
          height = 20,
          wrap = false,
        },
        virtual = {
          enabled = true,
        },
      },
      merge_consecutive = false,
      max_summary_width = 30,
      colors = nil,
      commit_detail_view = 'vsplit',
      format_fn = function(line_porcelain, config, idx)
        local hash = string.sub(line_porcelain.hash, 0, 7)
        local line_with_hl = {}
        if line_porcelain.hash == '0000000000000000000000000000000000000000' then
          table.insert(line_with_hl, { 'Not committed', 'Comment' })
          return line_with_hl
        end
        local summary = line_porcelain.summary
        if string.len(summary) > config.max_summary_width then
          summary = string.sub(summary, 0, config.max_summary_width - 3) .. '...'
        end
        table.insert(line_with_hl, { hash, 'Comment' })
        table.insert(line_with_hl, { ' ' .. summary, 'Comment' })
        table.insert(line_with_hl, { ' (' .. line_porcelain.author .. ')', 'Comment' })
        table.insert(line_with_hl, { ' ' .. line_porcelain.date, 'Comment' })
        return line_with_hl
      end,
    }
  end,
  keys = {
    { '<leader>gb', '<cmd>BlameToggle<cr>', desc = 'Toggle Git Blame' },
    { '<leader>gB', '<cmd>BlameToggle window<cr>', desc = 'Git Blame Window' },
  },
}

