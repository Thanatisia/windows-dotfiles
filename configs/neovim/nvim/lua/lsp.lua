-- Configurations 
-- for 
-- LSP servers

--- Initialize Variables
---- capabilities = 
default_attach = function()
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0}) --- Open manual/documentation for the current selected keyword in a hover
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0}) --- Go to code definition of the highlighted object under the cursor; Press 'Ctrl-T' to move backwards from definition
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0}) --- Go to type definition of the highlighted object under the cursor
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0}) --- Go to code implementation of the highlighted object under the cursor
    vim.keymap.set("n", "gr", vim.lsp.buf.references, {buffer=0}) --- Go to code references of the highlighted object under the cursor
    vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0}) --- Go to next error in diagnostics; View all in :Telescope diagnostics
    vim.keymap.set("n", "<leader>db", vim.diagnostic.goto_prev, {buffer=0}) --- Go to previous error in diagnostics; View all in :Telescope diagnostics
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", {buffer=0}) --- Open diagnostics in Telescope; Press 'Ctrl-Q' to add all errors into a Quicklist
    vim.keymap.set("n", "<leader>dr", "<cmd>Telescope lsp_references<CR>", {buffer=0}) --- Find references and display in Telescope; Press 'Ctrl-Q' to add all errors into a Quicklist
    vim.keymap.set("n", "rn", vim.lsp.buf.rename, {buffer=0}) --- Rename the definition and implementation of the keyword/code of the highlighted object under the cursor; It changes based on context and usage
    vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {buffer=0}) --- For Code Action
end

--- Import language server configurations
require('configurations.lsp.pyright') --- Setup pyright language server
require('configurations.lsp.gopls') --- Setup gopls language server
require('configurations.lsp.lua-language-server') --- Setup lua language server
require('configurations.lsp.jdtls') --- Setup eclipse/jdtls language server
require('configurations.lsp.bashls') --- Setup bashls language server
