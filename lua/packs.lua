vim.pack.add({
	{ src = "https://github.com/kevinhwang91/promise-async" },
	{ src = "https://github.com/kevinhwang91/nvim-ufo" },

	{ src = "https://github.com/windwp/nvim-autopairs" },

	{ src = "https://github.com/ibhagwan/fzf-lua" },

	{ src = "https://github.com/stevearc/oil.nvim" },

	{ src = "https://github.com/kylechui/nvim-surround", version = vim.version.range("4.x") },

	{ src = "https://github.com/rktjmp/lush.nvim" },

	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.*") },
	{ src = "https://github.com/williamboman/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/williamboman/mason-lspconfig.nvim" },
})

require("ufo").setup({
    provider_selector = function(bufnr, filetype, buftype)
        return { "lsp", "indent" }
    end
})


require("nvim-autopairs").setup()

require("oil").setup()

require("mason").setup({})

local capabilities = require("blink.cmp").get_lsp_capabilities()
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

require("mason-lspconfig").setup({
	ensure_installed = { "clangd", "lua_ls" },
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({ capabilities = capabilities })
		end,
	},
})

require("blink.cmp").setup({
	keymap = {
		preset = 'enter',
		["<tab>"] = { 'select_next', 'fallback' },
		["<s-tab>"] = { 'select_prev', 'fallback' },
		['<C-e>'] = false,
		['<C-space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
	},

	appearance = {
		nerd_font_variant = 'mono',
	},

	completion = { documentation = { auto_show = false } },

	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	},

	fuzzy = { implementation = "prefer_rust_with_warning" },
})
