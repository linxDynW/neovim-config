if not vim.g.vscode then
    return {}
end

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
    pattern = "*",
    callback = function()
        vim.opt_local.spell = false
    end,
})

local function vscode_action(cmd)
    return function()
        require("vscode").action(cmd)
    end
end

local keymap = vim.keymap.set

keymap("n", "<leader>e", vscode_action("workbench.view.explorer"), { desc = "VSCode Explorer" })
keymap("n", "H", vscode_action("workbench.action.previousEditor"), { desc = "Prev Tab" })
keymap("n", "L", vscode_action("workbench.action.nextEditor"), { desc = "Next Tab" })

keymap("n", "<leader>bd", vscode_action("workbench.action.closeActiveEditor"))
keymap("n", "<leader>bo", vscode_action("workbench.action.closeOtherEditors"))
keymap("n", "<leader>br", vscode_action("workbench.action.closeEditorsToTheRight"))
keymap("n", "<leader>bl", vscode_action("workbench.action.closeEditorsToTheLeft"))

keymap("n", "gd", vscode_action("editor.action.revealDefinition"))
keymap("n", "gD", vscode_action("editor.action.revealDeclaration"))
keymap("n", "K", vscode_action("editor.action.showHover"))

return {
    { "folke/flash.nvim", enabled = true },

    { "nvim-neo-tree/neo-tree.nvim", enabled = false },
    { "nvim-lualine/lualine.nvim", enabled = false },
    { "akinsho/bufferline.nvim", enabled = false },
    { "folke/noice.nvim", enabled = false },
    { "rcarriga/nvim-notify", enabled = false },
    { "nvimdev/dashboard-nvim", enabled = false },
    { "lukas-reineke/indent-blankline.nvim", enabled = false },
    { "mini.icons", enabled = false },
    { "mini.pairs", enabled = false },

    { "neovim/nvim-lspconfig", enabled = false },
    { "williamboman/mason.nvim", enabled = false },
    { "williamboman/mason-lspconfig.nvim", enabled = false },
    { "saghen/blink.cmp", enabled = false },
    { "hrsh7th/nvim-cmp", enabled = false },
    { "stevearc/conform.nvim", enabled = false },
    { "mfussenegger/nvim-lint", enabled = false },
    { "lazydev.nvim", enabled = false },
    { "friendly-snippets", enabled = false },

    { "nvim-treesitter/nvim-treesitter", enabled = false },
    { "nvim-treesitter-textobjects", enabled = false },
    { "nvim-ts-autotag", enabled = false },

    { "lewis6991/gitsigns.nvim", enabled = false },
    { "folke/which-key.nvim", enabled = false },
    { "folke/todo-comments.nvim", enabled = false },
    { "folke/trouble.nvim", enabled = false },
    { "MagicDuck/grug-far.nvim", enabled = false },

    { "catppuccin/nvim", enabled = false },
    { "folke/tokyonight.nvim", enabled = false },

    {
        "folke/snacks.nvim",
        opts = {
            scroll = { enabled = false },
            dashboard = { enabled = false },
            notifier = { enabled = false },
            input = { enabled = false },
            words = { enabled = false },
        },
    },

    { "folke/flash.nvim", enabled = true },
    { "mini.ai", enabled = true },
    { "folke/persistence.nvim", enabled = true },
    { "folke/ts-comments.nvim", enabled = true },
}
