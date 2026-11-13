
return {
    {
        "stevearc/oil.nvim",

        dependencies = {
            { "nvim-mini/mini.icons", opts = {} },
        },

        lazy = false,

        opts = {
            default_file_explorer = true,

            columns = {
                "icon",
                "size",
                "mtime",
            },

            view_options = {
                show_hidden = true,
            },

            float = {
                padding = 4,
                max_width = 100,
                max_height = 30,
            },
        },
    },
}
