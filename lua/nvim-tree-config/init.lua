-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.g.nvim_tree_indent_markers = 1
require("nvim-tree").setup({
    view = {
        side = 'left',
        width = 30,
    },
    disable_netrw = true,
})

-- Opening on startup shenanigans

-- the callback function to open it
local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end

-- Calls vim api to open it
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

