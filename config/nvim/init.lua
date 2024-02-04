-------------------- Config générale --------------------
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set wrap")
vim.cmd("set linebreak")
vim.cmd("set showmatch")
vim.cmd("set autoindent")

-- Lazy Vim --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-------------------- Plugins --------------------

local plugins = {

{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
{'projekt0n/github-nvim-theme'}

}
local opts = {}

require("lazy").setup(plugins, opts)


-------------------- Treesitter syntaxe --------------------

local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"cpp", "c", "c_sharp", "cmake", "css", "doxygen", "html", "java", "javascript", "json", "lua", "markdown", "php", "python", "sql", "vim", "vimdoc", "xml", "yaml"},
    highlight = { enable = true },
    indent = { enable = true },
})

-- ColorSheme --
vim.cmd('colorscheme github_dark')
