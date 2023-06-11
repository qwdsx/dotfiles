local rt = require('rust-tools')

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            vim.keymap.set("n", "<C-S>", rt.hover_actions.hover_actions, { buffer = bufnr })
            vim.keymap.set("n", "<C-A>", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
    tools = {
        hover_actions = {
            auto_focus = true,
        },
        inlay_hints = {
            auto = true,
            show_parameter_hints = true,
        }
    },
})