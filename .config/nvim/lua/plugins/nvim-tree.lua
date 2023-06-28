return {
  'kyazdani42/nvim-tree.lua',
  dependens = {
    'kyazdani42/nvim-web-devicons'
  },
  keys = {
    { 'tm', ':NvimTreeToggle<CR>', desc = 'Open or close the tree' },
    {
      '<C-n>',
      function()
        require('nvim-tree.api').tree.change_root_to_node()
      end,
      silent = true,
      noremap = true,
      desc = "change root to node",
    }
  },
  opts = {
    sort_by = "case_sensitive",
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  }
}
