return {
  -- add solarized-osaka
  {
    "craftzdog/solarized-osaka.nvim",
    opts = {
      on_highlights = function(hl, c)
        -- Configure telescope highlights
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopePromptNormal = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopePromptBorder = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopePromptTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopePreviewTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }

        -- Configure neo-tree highlights
        hl.NeoTreeNormal = {
          bg = c.bg_dark,
          fg = c.fg,
        }
        hl.NeoTreeNormalNC = {
          bg = c.bg_dark,
          fg = c.fg,
        }
        hl.NeoTreeEndOfBuffer = {
          bg = c.bg_dark,
          fg = c.bg_dark,
        }
        hl.NeoTreeVertSplit = {
          bg = c.bg_dark,
          fg = "#808080",
        }
        hl.NeoTreeWinSeparator = {
          bg = c.bg_dark,
          fg = "#808080",
        }
      end,
    },
  },

  -- Configure LazyVim to load solarized-osaka
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
