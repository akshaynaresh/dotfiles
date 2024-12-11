-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'neoclide/coc.nvim', branch='release' }

    require('packer').startup(function(use)
        use({ 'rose-pine/neovim', as = 'rose-pine' })
    end)
    use 'joshdick/onedark.vim'

    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'vim-airline/vim-airline'

    use 'lervag/vimtex'
    use 'xuhdev/vim-latex-live-preview'
    use 'github/copilot.vim'

    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'nvim-treesitter/playground'

    use 'theprimeagen/harpoon'
    use 'nvim-lua/plenary.nvim'
    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }


end)
