return {
  'kyazdani42/nvim-tree.lua',
  dependens = {
    'kyazdani42/nvim-web-devicons'
  },
  keys = {
    { '<C-m>', ':NvimTreeToggle<CR>', desc = 'Open or close the tree' },
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
