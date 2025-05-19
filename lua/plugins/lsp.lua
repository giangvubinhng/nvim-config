return {
  "neovim/nvim-lspconfig",
  config = function()
    local lsp = vim.lsp
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    lsp.config('pyright', {
      capabilities = capabilities
    })
    lsp.config('lua-ls', {
      capabilities = capabilities
    })

    vim.keymap.set('n', 'gD', lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', function()
      lsp.buf.hover { border = "single", max_height = 25, max_width = 120 }
    end, bufopts)
    vim.keymap.set('n', 'gi', lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<space>D', lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<C-a>', lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

    -- diagnostic
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  end
}
