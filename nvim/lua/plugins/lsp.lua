return {
    {
        "neovim/nvim-lspconfig",

        opts = {
            -- Disable inline parameter hints
            inlay_hints = {
                enabled = false,
            },

            -- LSP servers
            servers = {
                gopls = {
                    settings = {
                        gopls = {
                            gofumpt = true,
                            staticcheck = true,
                        },
                    },
                },

                rust_analyzer = {},
                basedpyright = {},
                clangd = {},
                lua_ls = {},
            },
        },
    },
}