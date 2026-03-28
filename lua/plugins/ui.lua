return {
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = { sidebars = "transparent", floats = "transparent" },
            on_highlights = function(hl, c)
                hl.CursorLine = {
                    underline = true,
                    bg = "none",
                }
                hl.NeoTreeNormal = { bg = "none" }
                hl.NeoTreeNormalNC = { bg = "none" }
                hl.NeoTreeWinSeparator = { fg = c.border, bg = "none" }
                hl.LualineNormal = { bg = "none" }
                hl.LualineInsert = { bg = "none" }
                hl.LualineVisual = { bg = "none" }
                hl.LualineReplace = { bg = "none" }
                hl.LualineCommand = { bg = "none" }
                hl.StatusLine = { bg = "none" }
                hl.StatusLineNC = { bg = "none" }
            end,
        },
    },
}
