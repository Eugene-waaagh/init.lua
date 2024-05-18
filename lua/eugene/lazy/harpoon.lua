return {
	"ThePrimeagen/harpoon",

	lazy = false;
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>a", mark.add_file, { noremap = true, silent = true })
		vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { noremap = true, silent = true })

		vim.keymap.set("n", "<C-z>", function() ui.nav_file(1) end, { noremap = true, silent = true })
		vim.keymap.set("n", "<C-x>", function() ui.nav_file(2) end, { noremap = true, silent = true })
		vim.keymap.set("n", "<C-c>", function() ui.nav_file(3) end, { noremap = true, silent = true })
		vim.keymap.set("n", "<C-v>", function() ui.nav_file(4) end, { noremap = true, silent = true })
	end,
}

