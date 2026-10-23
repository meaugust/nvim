local km = vim.keymap.set

km("n", "<esc>", ":noh<cr>")

km("n", "<leader>ff", ":Pick files<cr>")
km("n", "<leader>fb", ":Pick buffers<cr>")
km("n", "<leader>fg", ":Pick grep_live<cr>")
km("n", "<leader>fh", ":Pick help<cr>")

km("n", "L", ":bnext<cr>")
km("n", "H", ":bprevious<cr>")
km("n", "<leader>q", ":bdelete!<cr>")

km("n", "<leader>e", require("oil").toggle_float)
