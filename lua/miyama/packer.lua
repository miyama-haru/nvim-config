vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'ThePrimeagen/vim-be-good'

    -- use 'Shatur/neovim-ayu'

    use { "catppuccin/nvim", as = "catppuccin" }

    use 'nvim-treesitter/nvim-treesitter'

    use 'nvim-lua/plenary.nvim'

    use 'ThePrimeagen/harpoon'

    use 'nvim-telescope/telescope.nvim'

    use 'nvim-tree/nvim-tree.lua'

    use 'nvim-tree/nvim-web-devicons'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use 'ray-x/aurora'

end)
