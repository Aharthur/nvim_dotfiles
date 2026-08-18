vim.pack.add({
    "https://github.com/nvimtools/none-ls.nvim",
    "https://github.com/nvim-lua/plenary.nvim"
})


local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,

        -- Python
        null_ls.builtins.diagnostics.pylint,


        null_ls.builtins.formatting.black.with({
            extra_args = { "-l 79" },
        }),

        -- C++
        null_ls.builtins.diagnostics.clangd,
        null_ls.builtins.formatting.clang_format,
    },
    on_attach = function(client, bufnr)
        if client:supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})


vim.keymap.set("n", "<leader>cf", function()
    vim.lsp.buf.format { timeout_ms = 5000 }
end, { desc = "Format code" })
