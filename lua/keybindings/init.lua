vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- map 'MODE: i, n, v', 'assign keybord', 'Keyword to be replaced'

-- Ctrl + W + H >> Ctrl + H
map('n', '<C-h>', '<C-w>h', {
    noremap = true,
    silent = false
})

-- Ctrl + w + j >> Ctrl + j
map('n', '<C-j>', '<C-w>j', {
    noremap = true,
    silent = false
})

-- Ctrl + w + k >> Ctrl + k
map('n', '<C-k>', '<C-w>k', {
    noremap = true,
    silent = false
})

-- Ctrl + w + l >> Ctrl + l
map('n', '<C-l>', '<C-w>l', {
    noremap = true,
    silent = false
})

-- Ctrl + b to toggle nvim tree sidebar
map('n', '<C-b>', ':NvimTreeToggle<CR>', {
    noremap = true,
    silent = true
})

-- Dont lose selection on indent (<) in visual mode
map('v', '<', '<gv', {
    noremap = true,
    silent = false
})

-- Dont lose selection on indent (>) in visual mode
map('v', '>', '>gv', {
    noremap = true,
    silent = true
})

-- Maps Telescope command to Ctrl + F
map('n', '<C-F>', ':Telescope find_files<CR>', {
    noremap = true,
    silent = true
})
