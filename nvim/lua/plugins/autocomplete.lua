return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(4),
        ["<C-f>"] = cmp.mapping.scroll_docs(-4),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "path" },
        { name = "buffer" },
        { name = "nvim_lsp" },
        { name = "crates" },
      }),
    })
  end,
}
