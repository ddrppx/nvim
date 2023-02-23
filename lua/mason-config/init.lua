require('mason').setup()

require('mason-lspconfig').setup({
    'html',
    'cssls',
    'tsserver',
    'pylsp',
    'ls_emmet'
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_attach = function(client, bufnr)
  -- Create your keybindings here...
end

local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = lsp_attach,
      capabilities = lsp_capabilities,
    })
  end,
})
