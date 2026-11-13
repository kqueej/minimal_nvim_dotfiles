
return {
    {
        "stevearc/conform.nvim",

        opts = {
            formatters_by_ft = {
                go = { "gofumpt", "goimports" },
                rust = { "rustfmt" },
                python = { "ruff_format" },
                c = { "clang_format" },
                cpp = { "clang_format" },
            },

            format_on_save = {
                timeout_ms = 2000,
                lsp_format = "fallback",
            },
        },
    },
}
