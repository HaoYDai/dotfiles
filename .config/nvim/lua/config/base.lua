local set = vim.opt

vim.scriptencoding = 'utf-8'
set.encoding = 'utf-8'
set.fileencoding = 'utf-8'

vim.wo.number = true
set.relativenumber = true

set.title = true
set.autoindent = true
set.smartindent = true
set.hlsearch = true
set.backup = false
set.showcmd = true
set.cmdheight = 1
set.laststatus = 2
set.expandtab = true
set.scrolloff = 10
set.shell = 'fish'
set.backupskip = { '/tmp/*', '/private/tmp/*' }
set.inccommand = 'split'
set.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
set.smarttab = true
set.breakindent = true
set.shiftwidth = 2
set.tabstop = 2
set.wrap = false -- No Wrap lines
set.backspace = { 'start', 'eol', 'indent' }
set.path:append { '**' } -- Finding files - Search down into subfolders
set.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
set.formatoptions:append { 'r' }
