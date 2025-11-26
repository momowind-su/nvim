require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- ============================================================================
-- LSP & Diagnostics (all under <leader>d)
-- ============================================================================

-- Diagnostics
map("n", "<leader>dd", vim.diagnostic.open_float, { desc = "Diagnostic open float" })
map("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Diagnostic loclist" })
map("n", "<leader>dq", vim.diagnostic.setqflist, { desc = "Diagnostic quickfix" })
map("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Diagnostic next" })
map("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Diagnostic prev" })
map("n", "<leader>dh", vim.diagnostic.hide, { desc = "Diagnostic hide" })
map("n", "<leader>ds", vim.diagnostic.show, { desc = "Diagnostic show" })
map("n", "<leader>dt", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Diagnostic toggle" })

-- Code Actions
map("n", "<leader>da", vim.lsp.buf.code_action, { desc = "LSP code action" })
map("n", "<leader>df", vim.lsp.buf.format, { desc = "LSP format" })
map("n", "<leader>dr", vim.lsp.buf.rename, { desc = "LSP rename" })
map("n", "<leader>dR", vim.lsp.buf.references, { desc = "LSP references" })
map("n", "<leader>di", vim.lsp.buf.implementation, { desc = "LSP implementation" })
map("n", "<leader>dD", vim.lsp.buf.type_definition, { desc = "LSP type definition" })
map("n", "<leader>dk", vim.lsp.buf.hover, { desc = "LSP hover" })
map("n", "<leader>dK", vim.lsp.buf.signature_help, { desc = "LSP signature help" })

-- Also keep ]d and [d for quick navigation
map("n", "]d", vim.diagnostic.goto_next, { desc = "Diagnostic next" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Diagnostic prev" })
