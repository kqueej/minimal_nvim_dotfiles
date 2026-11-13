
return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
        },
        config = function()
            require("mason").setup()

            require("mason-lspconfig").setup({
                ensure_installed = {
                    "gopls",
                    "rust_analyzer",
                    "basedpyright",
                    "clangd",
                    "asm_lsp",
                },
            })

            vim.lsp.enable({
                "gopls",
                "rust_analyzer",
                "basedpyright",
                "clangd",
                "asm_lsp",
            })
        end,
    },
}
