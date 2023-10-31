local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
	return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

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

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup{}
    end
    }

    use 'lervag/vimtex'

    if packer_bootstrap then
	require('packer').sync()
    end
end)
