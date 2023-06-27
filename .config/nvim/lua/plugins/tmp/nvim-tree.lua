return {
  'kyazdani42/nvim-tree.lua',
  dependens = {
    'kyazdani42/nvim-web-devicons'
  },
  config = function()
    require("nvim-tree").setup({
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
    })
  end()
}
