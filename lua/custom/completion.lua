local cmp = require 'cmp'

return {
  -- Setup up vim-dadbod
  cmp.setup.filetype({ 'sql' }, {
    sources = {
      { name = 'vim-dadbod-completion' },
      { name = 'buffer' },
    },
  }),
}
