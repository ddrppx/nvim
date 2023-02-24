-- Set up lspconfig.

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig.configs').ls_emmet = {
    default_config = {
      cmd = { 'ls_emmet', '--stdio' };
      filetypes = {
        'html',
        'css',
        'scss',
        'javascriptreact',
        'typescriptreact',
        'haml',
        'xml',
        'xsl',
        'pug',
        'slim',
        'sass',
        'stylus',
        'less',
        'sss',
        'hbs',
        'handlebars',
      };
      root_dir = function(_)
        return vim.loop.cwd()
      end;
      settings = {};
    };
}

-- https://github.com/williamboman/mason-lspconfig.nvim#default-configuration
local langservers = {
    'html',
    'cssls',
    'ls_emmet',
    'intelephense',
    'pyright',
    'tsserver'
}
--
for _, server in ipairs(langservers) do 
    require'lspconfig'[server].setup{
        capabilities = capabilities
    }
end
