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
				ensure_installed = { "lua_ls", "gopls" },
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
		lazy = false,
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					-- need to install manually
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.gofumpt,
					null_ls.builtins.formatting.goimports_reviser,
    				null_ls.builtins.formatting.golines,
				},
			})
		end,
	},
	{
		"olexsmir/gopher.nvim",
		requires = {
    		"nvim-lua/plenary.nvim",
  		},
		config = function()
			require("gopher").setup({
				commands = {
					go = "go",
					gomodifytags = "gomodifytags",
					gotests = "gotests",
					impl = "impl",
					iferr = "iferr",
				},
			})
		end
	}
}
