-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if not vim.g.vscode then 
    require("snippets.nvim_config_operations")
end

vim.keymap.set("n", "<leader>t", function()
	vim.api.nvim_put({"\\n\\t"}, "c", true, true)
end, { desc = "Insert \"\\n\\t\"" })

vim.keymap.set("n", "<A-S-h>", function ()
	vim.cmd("BufferLineMovePrev")
end, { desc = "Move buffer to prev" })

vim.keymap.set("n", "<A-S-l>", function ()
	vim.cmd("BufferLineMoveNext")
end, {desc = "Move buffer to next" })
