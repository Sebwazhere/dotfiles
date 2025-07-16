return {
	{
		"mason-org/mason.nvim",
		opts = {}
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "clangd" }
		},
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig"
		},
		config = function(_, opts)
			require("mason-lspconfig").setup(opts)

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, {})
		end
	},
}
