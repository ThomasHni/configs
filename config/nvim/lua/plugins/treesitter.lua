return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"cpp", "c", "c_sharp", "cmake", "css", "doxygen", "html", "java", "javascript", "json", "lua", "markdown", "php", "python", "sql", "vim", "vimdoc", "xml", "yaml"},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

