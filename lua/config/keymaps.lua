-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
    vim.keymap.set('n', 'H', [[<cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>]])
    vim.keymap.set('n', 'L', [[<cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>]])
    vim.keymap.set('n', 'gd', [[<cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>]])
    vim.keymap.set('n', 'gD', [[<cmd>call VSCodeNotify('editor.action.revealDeclaration')<CR>]])
    vim.keymap.set('n', 'K', [[<cmd>call VSCodeNotify('editor.action.showHover')<CR>]])

    vim.keymap.set('n', '<leader>bd', [[<cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>]])
    vim.keymap.set('n', '<leader>bo', [[<cmd>call VSCodeNotify('workbench.action.closeOtherEditors')<CR>]])
    vim.keymap.set('n', '<leader>br', [[<cmd>call VSCodeNotify('workbench.action.closeEditorsToTheRight')<CR>]])
    vim.keymap.set('n', '<leader>bl', [[<cmd>call VSCodeNotify('workbench.action.closeEditorsToTheLeft')<CR>]])

    vim.keymap.set('n', '<leader>e', [[<cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>]])
    vim.keymap.set('n', '<leader>ff', [[<cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>]])
    vim.keymap.set('n', '<leader>oa', [[<cmd>call VSCodeNotify('workbench.action.showCommands')<CR>]])
end