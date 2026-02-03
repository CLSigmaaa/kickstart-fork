-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<C-n>', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
    { '<leader>ds', ':Neotree document_symbols<CR>', desc = 'NeoTree document symbols', silent = true },
    { '<leader>bb', ':Neotree buffers<CR>', desc = 'NeoTree buffers', silent = true },
  },
  opts = {
    sources = {
      "filesystem",
      "buffers",
      "document_symbols",
    },
  },
}
