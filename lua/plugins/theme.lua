return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = true,
            custom_highlights = function(colors)
                return {
                    NormalFloat = { bg = "none" },
                    FloatBorder = { bg = "none" },
                    NeoTreeNormal = { bg = "none" },
                    NeoTreeNormalNC = { bg = "none" },
                    TelescopeNormal = { bg = "none" },
                    TelescopeBorder = { bg = "none" },
                    TelescopeTitle = { bg = "none" },
                    SnacksNormal = { bg = "none" },
                    SnacksNormalNC = { bg = "none" },

                    -- BufferLineFill = { bg = colors.crust },
                    -- BufferLineBackground = { bg = colors.crust },
                    -- BufferLineSeparator = { fg = colors.crust, bg = colors.crust },
                    -- BufferLineOffsetSeparator = { fg = colors.crust, bg = colors.crust },

                    CursorLine = { bg = "none", underline = true },
                    CursorLineNr = { fg = colors.mauve, bg = "none", style = { "bold" } },

                    WinBar = { bg = "none" },
                    WinBarNC = { bg = "none" },
                    SignColumn = { bg = "none" },
                    FoldColumn = { bg = "none" },
                }
            end,
        },
    },
    -- 确保主题被正确应用
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     opts = {
    --         transparent_background = true,
    --         show_end_of_buffer = false,
    --         integration_default = false,
    --         integrations = {
    --             -- 开启这些插件的透明集成
    --             cmp = true,
    --             gitsigns = true,
    --             nvimtree = true,
    --             treesitter = true,
    --             notify = true,
    --             mini = {
    --                 enabled = true,
    --                 indentscope_color = "rosewater",
    --             },
    --             -- 重点：解决你图中标签页黑块的问题
    --             bufferline = true,
    --             native_lsp = {
    --                 enabled = true,
    --                 virtual_text = {
    --                     errors = { "italic" },
    --                     hints = { "italic" },
    --                     warnings = { "italic" },
    --                     information = { "italic" },
    --                 },
    --             },
    --         },
    --         custom_highlights = function(colors)
    --             return {
    --                 -- 强制暴力清除你图中那些顽固的背景块
    --                 BufferLineFill = { bg = "NONE" },
    --                 BufferLineBackground = { bg = "NONE" },
    --                 NeoTreeNormal = { bg = "NONE" },
    --                 NeoTreeNormalNC = { bg = "NONE" },
    --                 NeoTreeTabInactive = { bg = "NONE" },
    --                 NeoTreeTabActive = { bg = "NONE" },
    --                 NormalFloat = { bg = "NONE" }, -- 浮窗背景透明
    --                 FloatBorder = { bg = "NONE" }, -- 浮窗边框透明
    --             }
    --         end,
    --     },
    -- },
    { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin-mocha" } },
}
