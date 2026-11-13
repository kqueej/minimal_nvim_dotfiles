
return {
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
        },

        config = function()
            local is_windows = vim.fn.has("win32") == 1

            if is_windows then
                require("mason").setup()

                require("mason-lspconfig").setup({
                    ensure_installed = {
                        "gopls",
                        "rust_analyzer",
                        "basedpyright",
                        "clangd",
                    },
                })
            end

            vim.lsp.enable({
                "gopls",
                "rust_analyzer",
                "basedpyright",
                "clangd",
            })
        end,
    },
}
