return {
    {
        "saghen/blink.cmp",
        version = "*",

        dependencies = {
            "rafamadriz/friendly-snippets",
        },

        opts = {
            keymap = {
                preset = "enter",
            },

            appearance = {
                nerd_font_variant = "mono",
            },

            completion = {
                list = {
                    selection = {
                        preselect = true,
                        auto_insert = false,
                    },
                },

                menu = {
                    border = "rounded",
                    max_height = 8,
                    scrollbar = false,

                    draw = {
                        padding = 1,
                        gap = 1,

                        columns = {
                            { "label", "label_description", gap = 1 },
                            { "kind_icon", "kind" },
                        },
                    },
                },

                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 400,

                    window = {
                        border = "rounded",
                    },
                },
            },

            sources = {
                default = {
                    "lsp",
                    "path",
                    "snippets",
                    "buffer",
                },
            },
        },
    },
}