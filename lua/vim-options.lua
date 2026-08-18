local opt = vim.opt
local api = vim.api

-- coloring
opt.termguicolors = true

-- Line Numbers
opt.relativenumber = false
opt.number = true
opt.scrolloff = 5

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
vim.bo.softtabstop = 4

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Search Setting
opt.wrap = true
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

-- NO CONTINUATION OF COMMENTS!!!
api.nvim_create_autocmd("BufEnter", {
    callback = function()
        opt.formatoptions = opt.formatoptions - { "c", "r", "o" }
    end,
})

-- Folding
opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()" -- Utilize Treesitter folds

-- opt.formatoptions = 1
opt.lbr = true

vim.g.mapleader = " "

-- I cannot type properly
vim.api.nvim_create_user_command(
    'W',
    "w",
    { bang = true }
)

-- autocommands for different file types
vim.api.nvim_create_autocmd('FileType', {
    pattern = { "*" },
    callback = function(args)
        local ft = vim.bo[args.buf].filetype
        -- Do something based on the value of ft
        if ft == "python" then
            vim.opt_local.colorcolumn = "80"
        end
    end
})
