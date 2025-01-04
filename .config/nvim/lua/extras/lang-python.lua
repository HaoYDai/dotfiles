local utils = require("utils")

return {
    {
        "nvim-treesitter/nvim-treesitter",
        optional = true,
        opts = function(_, opts)
          if opts.ensure_installed ~= "all" then
            opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "python", "toml", "ninja", "rst" })
          end
        end,
      },
      {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        optional = true,
        opts = function(_, opts)
          opts.ensure_installed =
            utils.list_insert_unique(opts.ensure_installed, { "basedpyright", "black", "isort", "debugpy" })
        end,
      },
      {
        "mfussenegger/nvim-dap-python",
        ft = "python", -- NOTE: ft: lazy-load on filetype
        config = function()
        end,
      },
      {
        "nvim-neotest/neotest",
        optional = true,
        dependencies = { "nvim-neotest/neotest-python" },
        opts = function(_, opts)
          if not opts.adapters then opts.adapters = {} end
        end,
      },
      {
        "stevearc/conform.nvim",
        optional = true,
        opts = {
          formatters_by_ft = {
            python = { "isort", "black" },
          },
        },
      },
}
