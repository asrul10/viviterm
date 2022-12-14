local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local function lspSymbol(name, icon)
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end

lspSymbol("Error", "E")
lspSymbol("Info", "I")
lspSymbol("Hint", "H")
lspSymbol("Warn", "W")

local servers = {
  -- HTML
  "html",

  -- CSS
  "cssls",

  -- TypeScript, JavaScript
  "tsserver",
  -- "tailwindcss", -- commented because it is slow

  -- Rust
  "rust_analyzer",

  -- Go
  "gopls",

  -- Yaml
  "yamlls",

  -- PHP
  "intelephense",

  -- JSON
  "jsonls",

  -- Docker
  "dockerls",

  -- Bash
  "bashls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig["tailwindcss"].setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "typescriptreact" },
-- }
