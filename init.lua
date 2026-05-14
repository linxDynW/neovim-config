-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if not vim.g.vscode then
    require("snippets.nvim_config_operations")
    require("snippets.keys")
end
