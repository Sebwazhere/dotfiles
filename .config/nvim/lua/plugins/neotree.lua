return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({})
		vim.keymap.set("n", "<leader>t", function() vim.cmd("Neotree toggle filesystem left") end, {})
	end
}
