local km = vim.keymap.set

km("n", "<esc>", ":noh<cr>")

km("n", "<leader>ff", ":FzfLua files<cr>")
km("n", "<leader>fg", ":FzfLua live_grep<cr>")
km("n", "<leader>fs", ":FzfLua lsp_document_symbols<cr>")
km("n", "<leader>fd", ":FzfLua diagnostics_document<cr>")
km("n", "<leader>fd", ":FzfLua lsp_code_actions<cr>")

km("n", "L", ":bnext<cr>")
km("n", "H", ":bprevious<cr>")
km("n", "<leader>q", ":bdelete!<cr>")

km("n", "<leader>e", require("oil").toggle_float)

km("n", "<leader>d", vim.diagnostic.open_float)
km("n", "gd", vim.lsp.buf.definition)
km("n", "gD", vim.lsp.buf.declaration)
km("n", "gi", vim.lsp.buf.implementation)
km("n", "gr", vim.lsp.buf.references)
km("n", "gy", vim.lsp.buf.type_definition)

km("n", "K", vim.lsp.buf.hover)

km("n", "<leader>rn", vim.lsp.buf.rename)
