vim.keymap.set("n", "<leader>pv", "<cmd> NvimTreeToggle <CR>")
vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeFocus <CR>")

require("nvim-tree").setup({
    view = {
        adaptive_size = true,
    }
})
