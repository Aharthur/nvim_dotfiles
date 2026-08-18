vim.pack.add({
    {
        src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
        version = vim.version.range("3")
    },
    -- dependencies
 	"https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",

    -- optional
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/folke/snacks.nvim",

})
vim.keymap.set(
    "n",
    "<C-n>",
    ":Neotree close<CR>:Neotree filesystem reveal left<CR>",
    { desc = "Reveal filetree left" }
)

