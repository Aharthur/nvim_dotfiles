vim.pack.add({
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-telescope/telescope-ui-select.nvim",
    -- dependencies
    "https://github.com/nvim-lua/plenary.nvim"
})


local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<A-p>", builtin.live_grep, { desc = "Grep project" })
require("telescope").setup({
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
        },
    },
})
require("telescope").load_extension("ui-select")
