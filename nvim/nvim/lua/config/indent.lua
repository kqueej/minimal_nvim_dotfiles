local group = vim.api.nvim_create_augroup("CustomIndent", {
    clear = true,
})

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = { "c", "cpp", "cs" },
    callback = function()
        vim.opt_local.expandtab = true
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
    end,
})
