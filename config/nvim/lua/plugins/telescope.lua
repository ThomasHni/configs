return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        -- Chercher des fichiers : <C-f>
        vim.keymap.set('n', '<C-f>', builtin.find_files, { desc = "Find Files" })
        -- Recherche textuelle dans les fichiers : <C-g>
        vim.keymap.set('n', '<C-g>', builtin.live_grep, { desc = "Live Grep" })
    end
}
