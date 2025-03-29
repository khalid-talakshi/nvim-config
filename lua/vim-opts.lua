vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true })
vim.keymap.set("n", "<leader>pt", ":lua vim.treesitter.start()<CR>")

vim.keymap.set("n", "<leader>ds", ":lua vim.diagnostic.open_float({border='rounded'})<CR>")
vim.keymap.set("n", "<leader>dn", ":lua vim.diagnostic.goto_next({float = {border = 'rounded'}})<CR>")
vim.keymap.set("n", "<leader>dp", ":lua vim.diagnostic.goto_prev({float = {border = 'rounded'}})<CR>")

vim.filetype.add({
	extension = {
		jinja = "jinja",
		jinja2 = "jinja",
		j2 = "jinja",
	},
})

vim.keymap.set("n", "<leader>td", function()
	vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, noremap = true })
