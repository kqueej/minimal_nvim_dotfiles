return {
    {
        "stevearc/conform.nvim",

        opts = {
            formatters_by_ft = {
                go = { "goimports", "gofumpt" },
                rust = { "rustfmt" },
                python = { "ruff_format" },

                c = { "clang_format" },
                cpp = { "clang_format" },

                cs = { "csharpier" },
                lua = { "stylua" },
                sh = { "shfmt" },
                fish = { "fish_indent" },
            },

            formatters = {
                clang_format = {
                    prepend_args = {
                        "--style={BasedOnStyle: LLVM, BreakBeforeBraces: Allman, IndentWidth: 4, ColumnLimit: 100}",
                    },
                },
            },
        },
    },

    {
        "mason-org/mason.nvim",

        opts = {
            ensure_installed = {
                "gofumpt",
                "goimports",
                "ruff",
                "clang-format",
                "stylua",
                "shfmt",
            },
        },
    },
}