-- Configuration
-- for
-- Java LSP - jdtls

-- Connect to server
--- Setup
require'lspconfig'.jdtls.setup {
  capabilities = capabilities,
  on_attach = default_attach,
  filetypes = {"java"},
  single_file_support = true,
  init_options = {
    workspace = "~/.cache/jdtls/workspace"
  },
  cmd = {
    --"java",
    --"-Declipse.application=org.eclipse.jdt.ls.core.id1", "-Dosgi.bundles.defaultStartLevel=4", "-Declipse.product=org.eclipse.jdt.ls.core.product", "-Dlog.level=ALL",
    --"-noverify", "-Xmx1G",
    --"--add-modules=ALL-SYSTEM",
    --"--add-opens", "java.base/java.util=ALL-UNNAMED",
    --"--add-opens", "java.base/java.lang=ALL-UNNAMED",
    --"-jar", "~/Desktop/TestBench/build-scripts/eclipse/jdtls/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
    --"-configuration", "~/.cache/jdtls/config",
    --"-data", "~/.cache/jdtls/workspace"
    "jdtls",
    "--configuration", "~/.cache/jdtls/config",
    "--data", "~/.cache/jdtls/workspace"
  }
}
