return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", 
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<leader>nf', ':Neotree filesystem reveal left toggle<CR>', {})
    vim.keymap.set('n', '<leader>ng', ':Neotree git_status reveal left toggle<CR>', {}) 
  end
}

