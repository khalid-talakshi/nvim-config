return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_instaled = { "lua", "python", "javascript", "jinja", "html", "htmldjango" },
      highlight = { enabled = true },
      indent = { enabled = true },
    })
  end,
}
