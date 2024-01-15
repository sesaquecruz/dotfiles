return {
	{
		"goolord/alpha-nvim",
		config = function ()
			require("alpha").setup(
				require("alpha.themes.dashboard").config
			)
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { 
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		config = function()
		  require("nvim-tree").setup({
			view = {
				width = 30,
			},
		  })
		end,
	},
	{ 
		"akinsho/bufferline.nvim",
		config = function()
			require("bufferline").setup({
				options = {
					offsets = {
					  {
						  filetype = "NvimTree",
						  text="File Explorer",
						  separator= true,
						  text_align = "left",
					  }
					},
					diagnostics = "nvim_lsp",
					separator_style = {"", ""},
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "nightfly",
					globalstatus = true,
				},
				sections = {
					lualine_c = { },
					lualine_x = { "filetype" },
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
