local catpucccin_theme = {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({})
    -- vim.cmd.colorscheme("catppuccin")
  end,
}

local nord_theme = {
  "gbprod/nord.nvim",
  name = "nord",
  priority = 1000,
  lazy = false,
  config = function()
    require("nord").setup({
      transparent = true,
    })
    vim.cmd.colorscheme("nord")
    -- vim.g.nord_disable_background = true
  end,
}

return nord_theme
