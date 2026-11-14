return {
    {
        "neovim/nvim-lspconfig",

        opts = {
            inlay_hints = {
                enabled = false,
            },

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
