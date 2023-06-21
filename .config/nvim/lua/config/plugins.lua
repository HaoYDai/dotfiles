return {  
  -- Telescope
  {
    cmd = "Telescope",
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },

  -- LSP
  {
    event = "VeryLazy",
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
  },
  {
    event = "VeryLazy",
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" }
  },
}
