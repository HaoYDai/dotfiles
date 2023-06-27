return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  keys = {
    { 'te', ':tabedit<CR>', desc = 'Creat new tab' },
    { '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Move to previous buffer' },
    { '<Tab>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Move to next buffer' },
  },
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
      always_show_bufferline = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
      color_icons = true,

      diagnostics = "nvim_lsp",
    },
    highlights = {
      separator = {
        fg = '#073642',
        bg = '#002b36',
      },
      separator_selected = {
        fg = '#073642',
      },
      background = {
        fg = '#657b83',
        bg = '#002b36'
      },
      buffer_selected = {
        fg = '#fdf6e3',
        bold = true,
      },
      fill = {
        bg = '#073642'
      }
    }
  },
}
