return {
	"SirVer/ultisnips",
	config = function()
		vim.g.UltiSnipsExpandTrigger = "<c-e>"
		vim.g.UltiSnipsJumpForwardTrigger = "<leader>j"
		vim.g.UltiSnipsJumpBackwardTrigger = "<leader>k"

		vim.keymap.set("n", "<leader>u", ":UltiSnipsEdit<CR>")
		-- vim.g.ultisnips_snippet_directories = { "$HOME/.configs/nvim/snips/" }
	end,
}
