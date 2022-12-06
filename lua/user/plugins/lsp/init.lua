local status, _ = pcall(require, "lspconfig")
if not status then
  return
end

require("user.plugins.lsp.mason")
require("user.plugins.lsp.handlers").setup()
