
local map = vim.keymap.set

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>",
    { desc = "Find files" })

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>",
    { desc = "Live grep" })

map("n", "<leader>fb", "<cmd>Telescope buffers<CR>",
    { desc = "Find buffers" })

map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>",
    { desc = "Help tags" })

-- Oil
map("n", "-", "<cmd>Oil<CR>",
    { desc = "Open parent directory" })

map("n", "<leader>e", function()
    require("oil").open_float()
end, { desc = "Open file explorer" })

-- Platform-specific navigation
if vim.fn.has("win32") == 1 then

    map("n", "<leader>dr", function()
        vim.ui.input({
            prompt = "Windows drive/path: ",
            default = "C:/",
        }, function(path)
            if path and path ~= "" then
                require("oil").open(path)
            end
        end)
    end, { desc = "Open Windows drive" })

else

    map("n", "<leader>dr", function()
        require("oil").open(vim.fn.getcwd())
    end, { desc = "Open filesystem" })

end

-- Search
map("n", "<Esc>", "<cmd>nohlsearch<CR>",
    { desc = "Clear search highlight" })
