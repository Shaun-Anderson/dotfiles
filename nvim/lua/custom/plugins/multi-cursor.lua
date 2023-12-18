local M = {
    "smoka7/multicursors.nvim",
    enabled = true,
    lazy = true,
    priority = 1000, -- make sure to load this before all the other start plugins
    event = "VeryLazy",
    dependencies = {
        'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
        {
            mode = { 'v', 'n' },
            '<Leader>m',
            '<cmd>MCstart<cr>',
            desc = 'Create a selection for selected text or word under the cursor',
        },
    },
}

function M.config()
    require("multicursors").setup({})
end

return M
