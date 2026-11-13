return {
    {
        "vyfor/cord.nvim",
        build = ":Cord update",
        opts = {
            editor = {
                client = "neovim",
                tooltip = "Keep It Real - Ali G",
            },

            display = {
                theme = "atom",
                flavor = "accent",
                view = "full",
            },

            timestamp = {
                enabled = true,
            },

            idle = {
                enabled = true,
                timeout = 0,
                details = "shitting",

            text = {
                workspace = "Working on ${workspace}",
                editing = "Modifying ${filename}",
                viewing = "Inspecting ${filename}",
                file_browser = "Navigating filesystem",
                plugin_manager = "Configuring environment",
                terminal = "Uhh..emmm...",
                dashboard = "Initializing CookieBotOS",
                default = "Operating in Neovim",
            },            },
        },
    },
}
