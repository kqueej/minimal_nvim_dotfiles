
-- Diagnostics
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- LSP keymaps
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local map = function(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, {
                buffer = args.buf,
                desc = desc,
            })
        end

        map("gd", vim.lsp.buf.definition, "Go to definition")
        map("gD", vim.lsp.buf.declaration, "Go to declaration")
        map("gi", vim.lsp.buf.implementation, "Go to implementation")
        map("gr", vim.lsp.buf.references, "Find references")
        map("K", vim.lsp.buf.hover, "Hover documentation")

        map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
        map("<leader>ca", vim.lsp.buf.code_action, "Code action")
        map("<leader>d", vim.diagnostic.open_float, "Show diagnostic")
    end,
})
