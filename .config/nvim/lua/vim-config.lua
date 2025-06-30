vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set number")

vim.g.mapleader = " "

vim.diagnostic.enable()
vim.diagnostic.config({ virtual_text = true })
