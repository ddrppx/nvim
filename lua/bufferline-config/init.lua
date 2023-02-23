require('bufferline').setup{}

-- Tab and Shift + Tab to navigate through buffers (Tabs)
vim.cmd[[
    nnoremap <silent><TAB> :BufferLineCycleNext<CR>
    nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
