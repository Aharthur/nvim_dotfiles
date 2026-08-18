vim.pack.add({
    "https://github.com/williamboman/mason.nvim",
    "https://github.com/williamboman/mason-lspconfig.nvim",
    "https://github.com/neovim/nvim-lspconfig",
})

require("mason").setup({
    registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
    },
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "pyright",
        "clangd",
    },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", { capabilities = capabilities });

vim.lsp.config("pyright", {
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    }
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Description" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set({ "n", "v" }, "<leader>gn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })

vim.lsp.inlay_hint.enable(true)
vim.diagnostic.config({ virtual_text = true })

