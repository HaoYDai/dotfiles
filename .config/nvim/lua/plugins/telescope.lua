return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    "nvim-telescope/telescope-file-browser.nvim"
  },
  keys = {
    {
      ';f',
      function()
        require("telescope.builtin").find_files({
          no_ignore = false,
          hidden = true
        })
      end,
      silent = true,
      noremap = true,
      desc = "find files with Telescope",
    },
    {
      ';r',
      function()
        require("telescope.builtin").live_grep()
      end,
      silent = true,
      noremap = true,
      desc = "live grep with Telescope",
    },
    {
      '\\\\',
      function()
        require("telescope.builtin").buffers()
      end,
      silent = true,
      noremap = true,
      desc = "buffers with Telescope",
    },
    {
      ';t',
      function()
        require("telescope.builtin").help_tags()
      end,
      silent = true,
      noremap = true,
      desc = "help tags with Telescope",
    },
    {
      ';;',
      function()
        require("telescope.builtin").resume()
      end,
      silent = true,
      noremap = true,
      desc = "resume with Telescope",
    },
    {
      ';e',
      function()
        require("telescope.builtin").diagnostics()
      end,
      silent = true,
      noremap = true,
      desc = "diagnostics with Telescope",
    },
    {
      "sf",
      function()
        require("telescope").extensions.file_browser.file_browser({
          path = "%:p:h",
          cwd = vim.fn.expand('%:p:h'),
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = false,
          initial_mode = "normal",
          layout_config = { height = 40 }
        })
      end,
    }
  },
  opts = function()
    local telescope = require("telescope")
    local actions = require('telescope.actions')

    local fb_actions = require "telescope".extensions.file_browser.actions

    telescope.setup {
      defaults = {
        mappings = {
          n = {
            ["q"] = actions.close
          },
        },
      },
      extensions = {
        file_browser = {
          theme = "dropdown",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            -- your custom insert mode mappings
            ["i"] = {
              ["<C-w>"] = function() vim.cmd('normal vbd') end,
            },
            ["n"] = {
              -- your custom normal mode mappings
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function()
                vim.cmd('startinsert')
              end
            },
          },
        },
      },
    }

    telescope.load_extension("file_browser")
  end,
}
