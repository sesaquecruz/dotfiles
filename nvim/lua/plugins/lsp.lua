return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "gopls", "rust_analyzer" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			
			lspconfig.lua_ls.setup({ 
				capabilities = capabilities,
			})
			
			lspconfig.gopls.setup({ 
				capabilities = capabilities,
				settings = {
					gopls = {
					  	analyses = {
							unusedparams = true,
						},
					},
				},
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		ft = { "lua", "go" },
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					-- need to install manually
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.gofumpt,
					null_ls.builtins.formatting.goimports_reviser,
				},
			})
		end,
	},
	{
		"rust-lang/rust.vim",
		ft = { "rust" },
		init = function()
			vim.g.rustfmt_autosave = 1
		end,
	},
	{
		"saecki/crates.nvim",
		tag = 'stable',
		dependencies = { 
			"nvim-lua/plenary.nvim",
		},
		ft = { "toml" },
		config = function()
			local crates = require('crates')
			crates.setup({})
			crates.show()
			crates.show_versions_popup()
			crates.show_features_popup()
		end,
	},
}
