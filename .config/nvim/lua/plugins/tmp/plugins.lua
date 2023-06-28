 
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
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        '*',
      })
    end
  }
