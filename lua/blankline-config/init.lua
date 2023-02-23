require('indent_blankline').setup{
    bufftype_exclude = { 
        'terminal' 
    },
    filetype_exclude = {
        'dashboard',
        'NvimTree',
        'packer'
    },
    show_current_context = true,
}
