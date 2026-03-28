-- Quick redirect to or reload the neovim configs

-- group description
local whichkey = require("which-key")
whichkey.add({ { "<leader>r", group = "Neovim Configs" } })

-- quick open config file and dir
vim.keymap.set("n", "<leader>rc", [[<cmd>edit $MYVIMRC<CR>]], { desc = "Open init.lua" })

vim.keymap.set(
    "n",
    "<leader>rv",
    [[<cmd>execute 'edit ' . stdpath("config")<CR>]],
    { desc = "Switch pwd to nvim config" }
)

-- quick reload configs
vim.keymap.set("n", "<leader>rl", function()
    vim.cmd("source $MYVIMRC")
    vim.notify("Reloaded Configuration", vim.log.levels.INFO)
end, { desc = "Reload Configuration" })

vim.keymap.set("n", "<leader>rL", function()
    require("plenary.reload").reload_module("snippets")
    vim.cmd("source $MYVIMRC")
    vim.notify("Reloaded Config and modules", vim.log.levels.INFO)
end, { desc = "Reload Config and modules" })

-- run files or unsaved buffer as lua script
-- vim.keymap.set("n, ")
