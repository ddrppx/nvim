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

local langservers = {
    'html',
    'cssls',
    'tsserver',
    'pylsp',
    'ls_emmet'
}

for _, server in ipairs(langservers) do 
    require'lspconfig'[server].setup{
        capabilities = capabilities
    }
end
