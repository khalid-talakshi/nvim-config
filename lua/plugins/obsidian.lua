return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("obsidian").setup({
			workspaces = {
				{
					name = "Blue Jays",
					path = "~/Documents/vaults/Blue Jays",
				},
				{
					name = "personal",
					path = "~/Documents/vaults/personal",
				},
			},
			completion = {
				nvim_cmp = true,
			},
			picker = {
				-- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
				name = "telescope.nvim",
				-- Optional, configure key mappings for the picker. These are the defaults.
				-- Not all pickers support all mappings.
				note_mappings = {
					-- Create a new note from your query.
					new = "<C-x>",
					-- Insert a link to the selected note.
					insert_link = "<C-l>",
				},
				tag_mappings = {
					-- Add tag(s) to current note.
					tag_note = "<leader>tn",
					-- Insert a tag at the current location.
					insert_tag = "<C-l>",
				},
			},
		})
		vim.opt.conceallevel = 1
	end,
}
