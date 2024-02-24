return {
	"stevearc/conform.nvim",
	opts = {},

	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
			},
		})

		local format_buffer = function()
			local buffer_id = vim.api.nvim_get_current_buf()
			conform.format({ bufnr = buffer_id })
		end

		vim.keymap.set("n", "<leader>b", format_buffer, { noremap = true, silent = true })
	end,
}
