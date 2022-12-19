-- Configuration
-- for
-- Bash LSP - bashls

-- Connect to server
--- Setup
require'lspconfig'.bashls.setup {
  capabilities = capabilities,
  on_attach = default_attach,
}
