return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Ouvrir ou fermer Neo-tree : <C-e>
        vim.keymap.set('n', '<C-e>', ':Neotree toggle<CR>', { desc = "Toggle Neo-tree" })
        -- Révéler le répertoire à gauche : <C-n>
        vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', { desc = "Reveal Neo-tree" })
        -- Remonter d'un niveau dans l'arborescence : <C-u>
        vim.keymap.set('n', '<C-u>', ':Neotree reveal<CR>', { desc = "Go up in Neo-tree" })
    end
}
