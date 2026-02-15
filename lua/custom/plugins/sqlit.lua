return {
  'Maxteabag/sqlit.nvim',
  opts = {},
  keys = {
    { '<leader>ls', function() require('sqlit').open() end, desc = 'Database (sqlit)' },
  },
}
