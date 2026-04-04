local enable_startup_screen = true

local opt_key_startuptime = {
    sections = {
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
    },
    preset = {
        header = [[ ]],
    },
}

local opt_disable_startup_screen = {
    enabled = false,
}

local opt

if enable_startup_screen then
    opt = opt_key_startuptime
else
    opt = opt_disable_startup_screen
end

return {
    {
        "folke/snacks.nvim",
        opts = {
            dashboard = opt,
        },
    },
}
