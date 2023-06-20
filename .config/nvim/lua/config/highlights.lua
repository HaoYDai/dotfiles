local set = vim.opt

set.cursorline = true
set.termguicolors = true
set.winblend = 0
set.wildoptions = 'pum'
set.pumblend = 5
set.background = 'dark'

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]
