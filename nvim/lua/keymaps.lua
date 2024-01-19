-- <leader> is space

-- Windows
vim.keymap.set("n", "<leader>vh", ":split<CR>", {})
vim.keymap.set("n", "<leader>vv", ":vsplit<CR>", {})

vim.keymap.set("n", "<leader>mh", "<C-w>h", {})
vim.keymap.set("n", "<leader>mj", "<C-w>j", {})
vim.keymap.set("n", "<leader>mk", "<C-w>k", {})
vim.keymap.set("n", "<leader>ml", "<C-w>l", {})

-- Buffers
vim.keymap.set("n", "<leader>qq", ":bd<CR>", {})
vim.keymap.set("n", "<leader>qi", ":bd!<CR>", {})
vim.keymap.set("n", "<leader>qw", ":w<CR>", {})

-- File Explorer
vim.keymap.set("n", "<leader>eo", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", {})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fh", builtin.search_history, {})

-- LSP
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {})

-- On Snippet Doc Visualization
-- <C-b> to scroll up
-- <C-f> to scroll down

-- Debug
local dap = require("dap")
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<leader>dc", dap.continue, {})
vim.keymap.set("n", "<leader>dn", dap.step_over, {})
vim.keymap.set("n", "<leader>di", dap.step_into, {})
vim.keymap.set("n", "<leader>do", dap.step_out, {})
