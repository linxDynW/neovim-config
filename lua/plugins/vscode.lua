if not vim.g.vscode then
    return {}
end

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
    pattern = "*",
    callback = function()
        vim.opt_local.spell = false
    end,
})

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
    { "mason-org/mason.nvim", enabled = false },
    { "mason-org/mason-lspconfig.nvim", enabled = false },
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
