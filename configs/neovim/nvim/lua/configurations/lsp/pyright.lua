-- Configuration
-- for
-- python LSP - pyright

-- Connect to server
--- Setup pyright
require'lspconfig'.pyright.setup {
  capabilities = capabilities,
  on_attach = default_attach,
}
