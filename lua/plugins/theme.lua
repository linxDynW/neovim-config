return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true,
                contrast = "hard",
                palette_overrides = {},
                overrides = {
                    -- Normal = { bg = "none" },
                    Normal = { fg = "#fbf1c7" },

                    -- ["@keyword"] = { fg = "#fe8019", bold = true },
                    -- ["@type"] = { fg = "#fabd2f", bold = true },
                    -- ["@function"] = { fg = "#b8bb26", bold = true },
                    -- ["@variable"] = { fg = "#ebdbb2" },
                    -- ["@property"] = { fg = "#83a598" },
                    -- ["@string"] = { fg = "#b8bb26" },
                    -- ["@constant"] = { fg = "#d3869b" },
                    --
                    -- ["@asm"] = { fg = "#fb4934" },

                    NormalFloat = { bg = "none" },
                    FloatBorder = { bg = "none" },
                    SignColumn = { bg = "none" },
                    EndOfBuffer = { bg = "none" },
                    Folded = { bg = "none" },
                    FoldColumn = { bg = "none" },
                    CursorLine = { bg = "none", underline = true },
                },
                transparent_mode = true,
            })
            vim.cmd("colorscheme gruvbox")
        end,
    },
    -- { "folke/tokyonight.nvim", enabled = false },
}
