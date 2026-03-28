return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "c",
            "cpp",
            "lua",
            "vim",
            "query",
            "markdown",
            "markdown_inline",
        },
        auto_install = false,
    },
}
