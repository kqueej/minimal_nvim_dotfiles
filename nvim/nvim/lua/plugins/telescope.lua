return {
    {
        "nvim-telescope/telescope.nvim",
        version = "*",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        config = function()
            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = {
                        "%.git/",
                        "node_modules/",
                        "target/",
                        "vendor/",
                    },

                    layout_config = {
                        horizontal = {
                            preview_width = 0.55,
                        },
                    },

                    sorting_strategy = "ascending",
                },
            })
        end,
    },
}