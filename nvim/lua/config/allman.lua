local group = vim.api.nvim_create_augroup("AllmanStyle", {
    clear = true,
})

local function setup_allman(buf)
    vim.bo[buf].expandtab = true
    vim.bo[buf].shiftwidth = 4
    vim.bo[buf].tabstop = 4
    vim.bo[buf].softtabstop = 4

    vim.keymap.set("i", "<CR>", function()
        local row, col = unpack(vim.api.nvim_win_get_cursor(0))
        local line = vim.api.nvim_buf_get_lines(
            buf, row - 1, row, false
        )[1]

        local before = line:sub(1, col)
        local after = line:sub(col + 1)
            
        if before:sub(-1) == "{" and after:sub(1, 1) == "}" then
            local prefix = before:sub(1, -2)
            local tail = after:sub(2)

            local indent = line:match("^%s*") or ""
            local statement = prefix:gsub("%s+$", "")
            local inner_indent = indent .. string.rep(
                " ", vim.bo[buf].shiftwidth
            )

            local new_lines

            if statement == "" then
                new_lines = {
                    indent .. "{",
                    inner_indent,
                    indent .. "}" .. tail,
                }
                row = row + 1
            else
                new_lines = {
                    statement,
                    indent .. "{",
                    inner_indent,
                    indent .. "}" .. tail,
                }
                row = row + 2
            end

            vim.api.nvim_buf_set_lines(
                buf, row - (statement == "" and 2 or 3),
                row + (statement == "" and 1 or 1),
                false, new_lines
            )

            vim.api.nvim_win_set_cursor(0, {
                row,
                #inner_indent,
            })

            return
        end

        vim.api.nvim_feedkeys(
            vim.api.nvim_replace_termcodes(
                "<CR>", true, false, true
            ),
            "n",
            false
        )
    end, {
        buffer = buf,
        desc = "Allman brace formatting",
    })
end

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = { "c", "cpp", "cs" },
    callback = function(args)
        setup_allman(args.buf)
    end,
})

if vim.tbl_contains({ "c", "cpp", "cs" }, vim.bo.filetype) then
    setup_allman(0)
end
