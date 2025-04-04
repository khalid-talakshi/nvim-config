return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
          diagnostic_format = "[prettier] #{m}\n(#{c})",
        }),
        require("none-ls.diagnostics.ruff"),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.keymap.set("v", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
