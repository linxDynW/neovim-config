-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("snippets.nvim_config_operations")

vim.keymap.set("n", "<leader>t", function()
	vim.api.nvim_put({"\\n\\t"}, "c", true, true)
end, {desc = "Insert \"\\n\\t\""})
