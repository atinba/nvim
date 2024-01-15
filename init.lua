-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("options")
require("keymaps")
require("lsp")
require("plugins")

-- Defaults
require("nvim-tree").setup()
require("gitsigns").setup()
require("neoscroll").setup()
require("telescope").setup()
require("leap").create_default_mappings()

-- Treesitter
require("nvim-treesitter.configs").setup({
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "yaml" } },

    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
})

-- Colorscheme
require("onedark").setup({
    style = "darker",
})
require("onedark").load()
