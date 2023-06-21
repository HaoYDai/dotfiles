return {
  {
    "svrana/neosolarized.nvim",
    dependencies = {
      'tjdevries/colorbuddy.nvim'
    }
  },
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = 'kyazdani42/nvim-web-devicons'
  },


  -- Telescope
  {
    --    cmd = "Telescope",
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },

  -- LSP
  {
    --   event = "VeryLazy",
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
  },
  {
    --  event = "VeryLazy",
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" }
  },
  {
    -- event = "VeryLazy",
    "hrsh7th/nvim-cmp",
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "onsails/lspkind.nvim",
      "L3MON4D3/LuaSnip"
    }
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      { "kyazdani42/nvim-web-devicons" },
      --Please make sure you install markdown and markdown_inline parser
      { "nvim-treesitter/nvim-treesitter" }
    }
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" }
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'kyazdani42/nvim-web-devicons'
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        '*',
      })
    end
  }
}
