-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load plugin manager
require("config.lazy")

-- General options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- Interface
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.wrap = false

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- keymanp
require("config.keymaps")

-- synt
require("config.lsp")

-- auto pairs on C/C++
require("config.allman")
