vim.pack.add({
    "https://github.com/folke/which-key.nvim"
})

local wk = require("which-key")

vim.keymap.set("n", "<Leader>dl", "<Esc>:w<CR>:!clear;pdflatex %<CR>",
    { desc = "Compile PDF using pdflatex" })
vim.keymap.set("n", "<Leader>dk", "<Esc>:w<CR>:!clear;lualatex %<CR>",
    { desc = "Compile PDF using lualatex" })
vim.keymap.set("n", "<Leader>dj", "<Esc>:w<CR>:!clear;biber %:r<CR>",
    { desc = "Compile bibliography using biber" })
vim.keymap.set("n", "<Leader>db", "<Esc>:w<CR>:!clear;pdflatex %<CR> :!biber %:r<CR> :!pdflatex %<CR>",
    { desc = "Compile entire documentd uding pdflatex - biber - pdflatex" })
vim.keymap.set("n", "<Leader>dr", "<Esc>:w<CR>:!clear;python3 %<CR>",
    { desc = "Run python file" })
vim.keymap.set("n", "<Leader>dm", "<Esc>:w<CR>:!clear;make<CR>",
    { desc = "Make current program!" })

wk.add({
    { "<leader>c",  group = "Code" },
    { "<leader>d",  group = "Debugging" },
    { "<leader>dp", desc = "Tests" },
    { "<leader>g",  group = "Lookup current item" },
    { "<leader>m",  group = "Markdown" },
    { "<leader>v",  group = "Virtual environment" }, }
)
vim.keymap.set("n", '<C-h>', '<C-w>h', { noremap = true, desc = "Move to left pane" })
vim.keymap.set("n", '<C-j>', '<C-w>j', { noremap = true, desc = "Move to downward pane" })
vim.keymap.set("n", '<C-k>', '<C-w>k', { noremap = true, desc = "Move to right pane" })
vim.keymap.set("n", '<C-l>', '<C-w>l', { noremap = true, desc = "Move to upward pane" })


