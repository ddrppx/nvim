-- indent levels
vim.cmd('filetype plugin indent on')

-- ignoring messages at the bottom
vim.o.shortmess = vim.o.shortmess .. 'c'

-- buffers (? kkkkkkk)
vim.o.hidden = true

-- goes to next line at end of line
vim.o.whichwrap = 'b,s,<,>,[,],h,l'

-- popup menu height
vim.o.pumheight = 10

-- file encoding
vim.o.fileencoding = 'utf-8'

-- increase bottom line height
vim.o.cmdheight = 2

-- opens main split at bottom
vim.o.splitbelow = true

-- opens vertical split in the right
vim.o.splitright = true

-- use more colors if terminal supports it
vim.opt.termguicolors = true

-- aa
vim.o.conceallevel = 0

-- enable tablines at the top of the screen
vim.o.showtabline = 2

-- disable insert message at the bottom
vim.o.showmode = false

-- prevent creating backup files
vim.o.writebackup = false
vim.o.backup = false

-- milisseconds to update swap file
vim.o.updatetime = 300

-- aa
vim.o.timeoutlen = 100

-- enable system clipboard in vim
vim.o.clipboard = "unnamedplus"

-- disable search highlights
vim.o.hlsearch = false

-- turns search case insensitive
vim.o.ignorecase = true

-- start scrolling vertically when 3 lines away of the end of the screen
vim.o.scrolloff = 3

-- start scrolling the screen horizontally when 5 characters of the end of the screen
vim.o.sidescrolloff = 5

-- enable mouse clicks in vim
vim.o.mouse = "a"

-- text wrap
vim.wo.wrap = true

-- enable line numbers
vim.wo.number = true

-- light up cursor line
vim.o.cursorline = true

-- diagnostics behind the numbers
vim.wo.signcolumn = "yes"

-- tab size
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- indent
vim.o.autoindent = true
vim.bo.autoindent = true

-- aa
vim.o.expandtab = true
vim.bo.expandtab = true

