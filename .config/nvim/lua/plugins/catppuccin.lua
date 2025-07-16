return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	opts = {
		flavour = "macchiato",
		transparent_background = true,
	},
	config = function(_, opts)
		require("catppuccin").setup(opts)
		vim.cmd.colorscheme "catppuccin"
	end
}
